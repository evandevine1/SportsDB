# This page displays information about the currently selected player

import psycopg
from psycopg.rows import dict_row
from dbinfo import *
from nicegui import ui, app
