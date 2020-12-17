import boto3

class SnsHandler:
    def __init__(self, topicArn):
        self.__sqs = boto3.client('sns')
        self.__topicArn = topicArn


    def publish(self,body):
        
        response = self.__sqs.publish(
            TopicArn=self.__topicArn,    
            Message=body,  
        )
        return response