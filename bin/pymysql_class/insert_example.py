from database_operations_local import CookeryCommentsDB
import datetime


db = CookeryCommentsDB('localhost', 'root', '123456', 'cookery_chatbot')
now = datetime.datetime.now()
formatted_time = now.strftime("%Y-%m-%d %H:%M:%S")
db.insert_comment(13, 114514, formatted_time,'Hamburger(beef)','I will definitely try it again!')

comment = db.get_comment(13)
print(comment)

all_comments = db.get_all_comments()
for comment in all_comments:
    print(comment)

# db.update_comment(11, content='New .')

# db.delete_comment(11)

db.close()