import json
import boto3

import sys
sys.path.insert(0, '/opt')

def buscarUsuario(event, context):
    usuario = event['pathParameters']['usuario'];
    
    body = {
        "message": "O usuario enviado foi: " + str(usuario)
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response
    
def criarUsuario(event, context):
    
    print('body: ' + str(event['body']))
    
    usuario = event['body'];

    print('Usuario: ' + str(usuario))
    
    sqs = boto3.resource('sqs')
    
    queue = sqs.get_queue_by_name(QueueName='fiap-lab-trabalho-final-principal-dev')
    queue.send_message(MessageBody=usuario)
    
    print('mensagem enviada')
    
    body = {
        "message": "O usuario enviado foi cadastrado"
    }
    
    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response