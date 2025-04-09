# This page displays the currently selected league, its teams, its players, games, championships, and their statistics.

import psycopg
from psycopg.rows import dict_row
from dbinfo import *
from nicegui import ui, app
