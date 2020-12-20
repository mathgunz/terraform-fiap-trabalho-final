import os

class Variables:
    def __init__(self):
        self.__sns_url_dest = os.environ.get('sns_url_dest', '')
        self.__sqs_url = os.environ.get('sqs_url', '')
        
    def get_sns_url_dest(self):
        return self.__sns_url_dest
        
    def get_sqs_url(self):
        return self.__sqs_url