# automacao-robot-framework

Para utilizar o robot primeiro é necessário fazer algumas instalações e a forma mais simples é usando:

este comando irá instalar todas as libraryes que estão na pasta requirements.txt:
pip install -r requirements.txt

comandos utilizados para fazer automação mobile:
npm install -g appium
npm install appium-uiautomator2-driver

Existem diversos metodos para execução dos casos, deixei comentado na pasta run.py alguns metodos de execução.

Para executar todos os testes web utilizar:
python3 run.py -web

Para executar todos os testes de api utilizar:
python3 run.py -api

Para executar todos os testes mobile utilizar:
python3 run.py -mobile