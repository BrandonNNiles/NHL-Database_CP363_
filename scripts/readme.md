# Scripts
Scripts created in external forms to provide additional functionality to the database.    
Currently only consists of one file: *populate-db.py*.  
## **Purpose**:
*populate-db.py* will populate important tables of the data with **REAL** and **up-to-date*[^1].  
Other tables of the database will be populated with dummy data due to deadline time constraints for the project assignment.  
## **Instructions**:
1. Initialize the database (see /sql/readme.md).
2. Fill in login information in /config/login.json.
3. Ensure dependencies are installed.
4. Execute *populate-db.py*
## **Dependencies**:
### requests
Used to create HTTP fetch requests for the APIs.  
```
pip install requests
```
### my-sql-connector-python
Used to create a connection between the Python script and the MySQL server.  
```
pip install mysql-connector-python
```
[^1]: up-to-date information gathered from NHL-API: https://github.com/dword4/nhlapi
