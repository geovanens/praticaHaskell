import sys
from dirlididi import main
import glob
import os

# python dirlididi.py submit <problem_key> <token> <filename>

args = sys.argv
diretorio = args[-1]
if not "/" in diretorio:
    diretorio += "/"

source = glob.glob("%s*.hs" % diretorio)[0]
compilado = [diretorio+i for i in os.listdir(diretorio) if not "." in i][0]

sys.argv = ["dirlididi.py", "submit", args[1], "PlFMf5IrRvTB", compilado, source]

main()
