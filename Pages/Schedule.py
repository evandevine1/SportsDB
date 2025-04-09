# Get a schedule view given a database query and league

import psycopg
from psycopg.rows import dict_row
from dbinfo import *
from nicegui import ui, app
