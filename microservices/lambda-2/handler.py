import sys
sys.path.insert(0, '/opt')

from sqsHandler import SqsHandler

from aws_xray_sdk.core import xray_recorder
from aws_xray_sdk.core import patch_all

xray_recorder.configure(service='My app')
patch_all()

def handler(event, context):
    
    print('Recebendo Mensagem.');

    print(event['Records'][0]['body']);
    
    print('Mensagem recebida');
    
    raise Exception('Devolvendo pra fila')