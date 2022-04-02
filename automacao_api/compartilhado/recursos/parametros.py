from faker import Faker # pip install Faker
import random           # Do próprio python
fake = Faker()
numeros = random.randrange(0000, 9999)
email = fake.email()
nome = fake.name()
cpf_vazio = ""

def Login():

    return{
        "email": "testeepeca@gmail.com",
        "senha": "123456teste"
    }

def Cadastro():

    return{
        # encontrar metodo de gerar cpfs validos em python
        "identificador": "",
        "email": email,
        "senha": "7894565kiss",
        "nome_razao": nome,
        "detalhe_cliente": {
            "nome_razao": nome,
            "nome_fantasia": None,
            "tipo": "PF",
            "status": "ativo",
            "genero": "F",
            "email": email,
            "inscricao_estadual": "224956607",
            "dt_nascimento": "21/05/1980",
            "end_principal": {
                "uf": "RJ",
                "cidade": nome,
                "bairro": nome,
                "logradouro": nome,
                "nro": numeros,
                "complemento": "",
                "cep": "07929-000",
                "obs": None
            },
            "end_secundarios": [

            ],
            "telefones": [
                {
                    "descricao": "telefone01",
                    "numero": "(11) 940028922",
                    "tipo": ""
                },
                {
                    "descricao": "telefone02",
                    "numero": "",
                    "tipo": ""
                }
            ]
        }
    }
    
def Cadastro_cpf_ja_cadastrado():

    return{
        
        "identificador": "25665716006",
        "email": email,
        "senha": "7894565kiss",
        "nome_razao": nome,
        "detalhe_cliente": {
            "nome_razao": nome,
            "nome_fantasia": None,
            "tipo": "PF",
            "status": "ativo",
            "genero": "F",
            "email": email,
            "inscricao_estadual": "224956607",
            "dt_nascimento": "21/05/1980",
            "end_principal": {
                "uf": "RJ",
                "cidade": nome,
                "bairro": nome,
                "logradouro": nome,
                "nro": numeros,
                "complemento": "",
                "cep": "07929-000",
                "obs": None
            },
            "end_secundarios": [

            ],
            "telefones": [
                {
                    "descricao": "telefone01",
                    "numero": "(11) 940028922",
                    "tipo": ""
                },
                {
                    "descricao": "telefone02",
                    "numero": "",
                    "tipo": ""
                }
            ]
        }
    }

