"""
    Script to fetch, manipulate, and populate NHL Database
    Author: Brandon Niles
    Dependancies: 
        pip install requests
"""

#imports
import requests as req
import json

"""
apiConnect(url)
    url: string
        ->url of API to connect to
    Returns the result of connecting to a provided URL
    Prints output based on response
"""
def apiConnect(url):
    print("Attempting to connect to " + url)
    res = req.get(url)
    print("API connection: " + res.reason)
    return res.json()

myUrl = "https://statsapi.web.nhl.com/api/v1/teams"
foundTeams = 0
for team in apiConnect(myUrl)['teams']:
    for index, entry in team.items():
        if index == 'teamName':
            foundTeams += 1
            print(entry)

print("Found " + str(foundTeams) + " teams.")
