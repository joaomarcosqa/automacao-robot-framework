import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))
# import config

for param in sys.argv[1:]:
    # comandos para rodar todas as suites de testes web:
    # comando a ser usado python run.py -web
    if param == "-web":
        command = "robot -d ./logs ./automacao_web/testes "

    elif param == "-login_web":
        command = "robot -d ./logs ./automacao_web/testes/login.robot "
    # exemplo de comando a ser criado com novas suites
    # alterar comando e o caminho
    # comando novo a ser usado será sempre python run.py e o nome desejado do comando
    elif param == "-":
        command = "robot -d ./logs ./automacao_web/testes/login.robot "
    # quando for necessario criar novos comenados pode ser usado o copiar e colar
    # copiar o elif e colocar o novo comando e caminho

    # comandos para rodar todas as suites de testes de api:
    # comandos para xecutar os testes de api
    elif param == "-api":
        command = "robot -d ./logs ./automacao_api/testes "

    elif param == "-login_api":
        command = "robot -d ./logs ./automacao_api/testes/login.robot "
        
    if param == "-cadastro_api":
        command = "robot -d ./logs ./automacao_api/testes/cadastro.robot "

    # comandos para rodar todas as suites de testes mobile:
    # comandos para rodar todos os cenarios android
    elif param == "-android":
        command = "robot -d ./logs -v device:android ./automacao_mobile/testes_android"

    elif param == "-cadastro_android":
        command = "robot -d ./logs -v device:android ./automacao_mobile/testes_android/cadastro.robot"

    elif param == "-usuario_deslogado_android":
        command = "robot -d ./logs -v device:android ./automacao_mobile/testes_android/usuario_deslogado.robot"

    elif param == "-login_android":
        command = "robot -d ./logs -v device:android ./automacao_mobile/testes_android/login.robot"

    elif param == "-agendar_android":
        command = "robot -d ./logs -v device:android ./automacao_mobile/testes_android/agendar_servico.robot"

    elif param == "-agendamentos_android":
        command = "robot -d ./logs -v device:android ./automacao_mobile/testes_android/meus_agendamentos.robot"

    #comandos para rodar todos os cenarios ios
    elif param == "-ios":
        command = "robot -d ./logs -v device:ios ./automacao_mobile/testes_ios"

    elif param == "-cadastro_ios":
        command = "robot -d ./logs -v device:ios ./automacao_mobile/testes_ios/cadastro.robot"

    elif param == "-usuario_deslogado_ios":
        command = "robot -d ./logs -v device:ios ./automacao_mobile/testes_ios/usuario_deslogado.robot"

    elif param == "-login_ios":
        command = "robot -d ./logs -v device:ios ./automacao_mobile/testes_ios/login.robot"
    
    elif param == "-agendar_ios":
        command = "robot -d ./logs -v device:ios ./automacao_mobile/testes_ios/agendar_servico.robot"

    elif param == "-agendamentos_ios":
        command = "robot -d ./logs -v device:ios ./automacao_mobile/testes_ios/meus_agendamentos.robot"

os.system(command)

