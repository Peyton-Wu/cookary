from database_operations_local import CookeryCommentsDB



db = CookeryCommentsDB('localhost', 'root', '123456', 'cookery_chatbot')

db.insert_comment(11, 'practicality', 'Very useful cooking tips that allow me to cook and eat dinner half an hour earlier every day when I get home from work.')

comment = db.get_comment(11)
print(comment)

all_comments = db.get_all_comments()
for comment in all_comments:
    print(comment)

# db.update_comment(11, content='New .')

# db.delete_comment(11)

db.close()