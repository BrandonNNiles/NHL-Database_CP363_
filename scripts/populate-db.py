"""
    Script to fetch, manipulate, and populate NHL Database
    Author: Brandon Niles
    Dependancies: 
        pip install requests
        pip install mysql-connector-python
"""

#imports
import requests as req
import json
import mysql.connector

#Methods
"""
apiFetch(url)
    url: string
        ->url of API to connect to
    Returns the result of connecting to a provided URL
    Prints output based on response
"""
def apiFetch(url):
    print("Attempting to fetch from " + url)
    res = req.get(url)
    print("API status: " + res.reason)
    return res.json()

"""
dbConnect(hostip, username, password)
    host: string
        ->IP of DB to connect to
    host: string
    username: string
    Prints output based on response
"""
def dbConnect(hostip, username, password, db):
    print("Attempting to connect to database at " + hostip + " as " + username)
    try:
        db = mysql.connector.connect(
            host = hostip,
            user = username,
            passwd = password,
            database = db
        )
        print("Successfully connected to " + db.database)
        return db
    except:
        print("Error, failed to connect to DB.")

"""
getLoginInfo(filepath)
    filepath: string
        ->file to look for
    returns Object for login information
"""
def getLoginInfo(filepath):
    print("Attempting to read file " + filepath)
    try:
        f = open(filepath, 'r')
        data = json.load(f)['login_info']
        #print("Found: " + str(data)) #You may want to keep this commented out
        return data['host'], data['user'], data['pass'], data['database']
    except:
        print("Error, file: " + filepath + " not found!")

myUrl = "https://statsapi.web.nhl.com/api/v1/teams"
#print("Found " + str(foundTeams) + " teams.")
"""
populateDB()
    fills tables with data
"""
def populateDB():
    db = dbConnect(*getLoginInfo('config/login.json'))
    c = db.cursor()

    #Franchises
    for team in apiFetch(myUrl)['teams']:
        stats = apiFetch(myUrl + "/" + str(team['id']) + "/stats")['stats'][0]['splits'][0]['stat']
        stats2 = apiFetch(myUrl + "/" + str(team['id']) + "/stats")['stats'][1]['splits'][0]['stat']
        d = {
            "team_name": team['name'],
            "city": team['locationName'],
            "division": team['division']['nameShort'],
            "ranking": stats2['pts'],
            "arena_name": team['venue']['name'],
            "wins": stats['wins'],
            "losses": stats['losses']
        }

        if d["team_name"] is not None: #we don't want to push nulls
            c.execute("INSERT INTO FRANCHISES VALUES (%s, %s, %s, %s, %s, %s, %s)",
            (list(d.values())))
            c.execute("INSERT INTO HEAD_COACH_TABLE VALUES (%s, %s)",
            (apiFetch("https://api.namefake.com/")['name'], d["team_name"]))
            c.execute("INSERT INTO OWNER_TABLE VALUES (%s, %s)",
            (apiFetch("https://api.namefake.com/")['name'], d["team_name"]))
            c.execute("INSERT INTO GM_TABLE VALUES (%s, %s)",
            (apiFetch("https://api.namefake.com/")['name'], d["team_name"]))



    db.commit() #must be last line

populateDB()