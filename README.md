# IMPORTANT NOTICE: This project was created as a university project and there has not been any additional development done to it. Please take that in consideration when you are viewing the code. Thanks. - Oct 7 2020.

# Highlander
This is a web-based platform that allows outdoor adventurers to explore unique adventure spots around the globe.


Steps to take before running application locally:

1. Install Node Js onto your machine. (www.nodejs.org).
2. Cd to your project directory.
3. Clone this repository onto the directory.
4. Run this command: "npm install" (without the ""). This will install all required node packages for the project.
5. Install Postgresql.
6. Configure Postgreql. You will need to create all the necessary tables to avoid errors. This project comes with a database folder, and in the database folder,    there is a createTables.sql file.
    In your psql command line interface, do this: "\i /......your_local_path_to..../createTables.sql". This will automatically create all the tables for this project.
    If you want to populate your database so you can have something to test with, do the same thing: "\i /......your_local_path_to..../testData.sql"

7.Cd back to your project directory where the server.js file is located, if necessary, run: node server.js in the terminal.
8.Go to your browser and type in: localhost:3001 .
