"""
    Script to fetch, manipulate, and populate NHL Database
    Author: Brandon Niles
    Dependancies: 
        pip install requests
        pip install mysql-connector
"""

#imports
import requests as req
import json
import mysql.connector

#Methods
"""
apiConnect(url)
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
foundTeams = 0
for team in apiFetch(myUrl)['teams']:
    for index, entry in team.items():
        if index == 'teamName':
            foundTeams += 1
            #print(entry)

#print("Found " + str(foundTeams) + " teams.")
dbConnect(*getLoginInfo('scripts/login.json'))
