# CP363-Group-Project
SQL database project for CP363 Winter 2022.  
Professor: Syed Nasir Danial  
## Team
**Brandon Niles** (Project lead, backend development): https://github.com/BrandonNNiles  
**Ramindu Gunasekara** (Tables, queries): https://github.com/RaminduG  
**Johnson Huynh** (Tables): https://github.com/CodeJohnson0162  
**Ahmed Nour** (Tables, projections): https://github.com/moodyboomin  
**Kabir Babra** (Normalization): https://github.com/Kabir60  
**Ivan Lin** (Design, ERD): https://github.com/IvanYuliLin  
**Evan Friedlan** (Design, ERD): https://github.com/evanfriedlan
## Assignment Instructions
The following information was provided for the instructions:  
![Assignment Instructions](/Assets/images/Assignment%20Instructions.png)
## Projection Information
### Executive Summary
The NHL Scorekeeping Database aims to provide a resource for individuals who are interested in viewing detailed information regarding a given NHL season. Within the database, users can find data regarding players, teams, score, games, and so much more. Because of the nature of competitive hockey in North America, there is potential for this database to be applicable to a wide variety of individuals - including business propositions.
### Database Description
NHL Scorekeeping Database provides users with a tool to search up information regarding the NHL, specifically for fantasy leagues or gambling purposes. The database itself is made using MySQL. The interface provided to the user will be written in Python, which will allow the program to make calculations for various different stats in real-time, rather than having to store an abundant amount of specific information (think scoring accuracy). Additionally, Python will be used in the backend for initialization purposes of filling the database with information found online. For the purpose of this project, we will be using *real data* [^1] as well as some filler data for sample purposes.
### Target Audience
Because hockey is so prevalent in North America, a wide variety of users are expected to find use from this database. A few key target users are:  
1. Coaches
2. Fans
3. Gamblers
4. Gambling organizations
5. Organizers  
  
Because there is a significant amount of money involved within sports gambling, we believe that specifically targeting (but not limiting to) these individuals would be the best move in a business environment. Gamblers know that in order to optimize their winnings, they need to have all the most detailed information regarding game and player statistics.
## Design
Detailed information relating to design:  
### ERD
![ERD](/Assets/images/ERD.png)

[^1]: up-to-date information gathered from NHL-API: https://github.com/dword4/nhlapi