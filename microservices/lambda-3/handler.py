import sys
sys.path.insert(0, '/opt')

from sqsHandler import SqsHandler
from snsHandler import SnsHandler

from aws_xray_sdk.core import xray_recorder
from aws_xray_sdk.core import patch_all

xray_recorder.configure(service='My app')
patch_all()

def handler(event, context):
    
    sqs = SqsHandler('https://sqs.us-east-1.amazonaws.com/516773109411/fiap-lab-trabalho-final-principal-dev-DLQ');
        
    print('Recebendo DLQ')
    print(event['Records'][0]['body'])
        
    sns = SnsHandler('arn:aws:sns:us-east-1:516773109411:lab-fiap-trabalho-final-topico-dev');
    response = sns.publish(event['Records'][0]['body']);
    print(response)
    
    print('Email enviado.')
    
    sqs.deleteMessage(event['Records'][0]['receiptHandle'])
    print('Mensagem Removida.')