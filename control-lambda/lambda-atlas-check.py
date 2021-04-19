import json
import boto3
import urllib.request
import socket
import os 

def lambda_handler(event, context):
  try:
    hostname = '${atlas_hostname}'
    port     = ${atlas_port}
    #Test port
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    result = sock.connect_ex((hostname, port))
    if result == 0:
      print(f'Port {port} is open on {hostname}')
    else:
      print(f'Port {port} is closed on {hostname}')
      raise "Port Closed"

  except Exception as e:
    raise e
  else:
    print('Instances are up')