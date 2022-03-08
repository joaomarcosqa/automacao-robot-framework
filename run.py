import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))
# import config
    
for param in sys.argv[1:]:
    # comando para rodar rodas as suites de testes
    # comando a ser usado python3 run.py -web
    if param == "-web":
        command = "robot -d ./evidencias ./automacao_web/testes "
    # comando para rodar a suite de testes de login
    # comando a ser usado python3 run.py -login
    elif param == "-login":
        command = "robot -d ./evidencias ./automacao_web/testes/login.robot "
    # exemplo de comando a ser criado com novas suites
    # alterar comando e o caminho
    # comando novo a ser usado será sempre python3 run.py e o nome desejado do comando
    elif param == "-": 
        command = "robot -d ./evidencias ./automacao_web/testes/login.robot "
    # quando for necessario criar novos comenados pode ser usado o copiar e colar
    # copiar o elif e colocar o novo comando e caminho
os.system(command)
