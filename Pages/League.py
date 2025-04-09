# This page displays the currently selected league, its teams, its players, games, championships, and their statistics.

import psycopg
from psycopg.rows import dict_row
from dbinfo import *
from nicegui import ui, app

#Get all teams in the league, ranked
def getTeams()
    
#Get top players for the selected league, ranked
def getPlayers()
    
#Get upcoming games for the selected league
def getGames()

#List league championships and reigning champions
def getChampionships()