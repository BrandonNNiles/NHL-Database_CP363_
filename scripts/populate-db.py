"""
    Script to fetch, manipulate, and populate NHL Database
    Author: Brandon Niles
    Dependancies: Requests module
"""

#imports
import requests as req
import json

#setup

"""
apiConnect(url)
    url: string
        ->url of API to connect to
    Returns the result of connecting to a provided URL
    Prints output based on response
"""
def apiConnect(url):
    res = req.get(url)
    print("API connection: " + res.reason)
    return res

myUrl = "https://statsapi.web.nhl.com/api/v1/teams"
apiConnect(myUrl)


#fetch data

#push data