# automacao-robot-framework

Inicialmente será necessário instalar:
Python
Java
Node.js

Para utilizar o robot primeiro é necessário fazer algumas instalações e a forma mais simples é usando:

este comando irá instalar todas as libraryes que estão na pasta requirements.txt:
pip install -r requirements.txt

para automação mobile é necessário configurar as variaveis de ambiente, instalar o android studio e o appium.  ##URL DE AJUDA##   https://www.youtube.com/watch?v=W5hcHbzTjOc

comandos utilizados para instalar requisitos de automação mobile:
npm install -g appium
npm install -g appium-doctor
npm install appium-uiautomator2-driver

Existem diversos metodos para execução dos casos, deixei comentado na pasta run.py.

Alguns metodos de execução:

Para executar todos os testes web utilizar:
python3 run.py -web

Para executar todos os testes de api utilizar:
python3 run.py -api

Para executar todos os testes mobile utilizar:
python3 run.py -mobile
