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

db = mysql.connector.connect()

#Methods
"""
apiConnect(url)
    url: string
        ->url of API to connect to
    Returns the result of connecting to a provided URL
    Prints output based on response
"""
def apiConnect(url):
    print("Attempting to reach " + url)
    res = req.get(url)
    print("API connection: " + res.reason)
    return res.json()

"""
dbConnect(hostip, username, password)
    host: string
        ->IP of DB to connect to
    host: string
    username: string
    Prints output based on response
"""
def dbConnect(hostip, username, password):
    print("Attempting to connect to " + hostip + " as " + username)
    try:
        db = mysql.connector.connect(
            host = hostip,
            user = username,
            passwd = password
        )
        print("Successfully connected to " + hostip)
        return db
    except:
        print("Error, failed to connect to DB.")
        

myUrl = "https://statsapi.web.nhl.com/api/v1/teams"
foundTeams = 0
for team in apiConnect(myUrl)['teams']:
    for index, entry in team.items():
        if index == 'teamName':
            foundTeams += 1
            print(entry)

print("Found " + str(foundTeams) + " teams.")
