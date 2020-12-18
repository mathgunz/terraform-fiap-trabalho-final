from sqsHandler import SqsHandler

def handler(event, context):
    
    print('Recebendo Mensagem.');

    print(event['Records'][0]['body']);
    
    print('Mensagem recebida');
    
    raise Exception('Devolvendo pra fila')