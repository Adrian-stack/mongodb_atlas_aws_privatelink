from pymongo import MongoClient
from mongoconst import DBS
from mongoconst import DUMMY
from mongoconst import ROLE

def create_db(mongo_admin_user, mongo_admin_pass, mongos):
  for db in DBS:
    client = MongoClient(mongos,
                         username=mongo_admin_user,
                         password=mongo_admin_pass,
                         authSource='admin',
                         ssl=True)
    mydb = client[db]
    mydb[db].insert_many(DUMMY)
    client.close()

def lambda_handler(event, context):
  # atlas init parameters
  mongos = '${atlas_connection_string}'
  group_id = '${atlas_group_id}'
  public_key = '${public_key}'
  private_key = '${private_key}'

  print('Create DBs, users and roles!')
  try:
    create_db("admin", "admin", mongos)
  except Exception as e:
    raise e
  else:
    print(' DBs, users and roles created sucessfully!')