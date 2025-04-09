# This is the landing page of the website that will be displayed by default or when the user clicks on the logo.

import psycopg
from psycopg.rows import dict_row
from dbinfo import *
from nicegui import ui, app

# Connect to an existing database
conn = psycopg.connect(
    f"host=dbclass.rhodescs.org dbname=practice user={DBUSER} password={DBPASS}"
)

# Open a cursor to perform database operations
cur = conn.cursor(row_factory=dict_row)

#Get all leagues
def getLeagues()
    
#Get upcoming schedule for all major leagues
def getSportsSchedule()
