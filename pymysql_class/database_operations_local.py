import pymysql


class CookeryCommentsDB:
    def __init__(self, host, user, password, db_name):
        self.host = host
        self.user = user
        self.password = password
        self.db_name = db_name
        self.connection = None
        self.cursor = None
        self.connect()

    def connect(self):
        self.connection = pymysql.connect(
            host=self.host,
            user=self.user,
            password=self.password,
            db=self.db_name,
            charset='utf8mb4',
            cursorclass=pymysql.cursors.DictCursor
        )
        self.cursor = self.connection.cursor()

    def close(self):
        if self.connection:
            self.cursor.close()
            self.connection.close()

    def insert_comment(self, comment_id, category, content):
        sql = "INSERT INTO `cookery_comments` (`comment_id`, `category`, `content`) VALUES (%s, %s, %s)"
        self.cursor.execute(sql, (comment_id, category, content))
        self.connection.commit()

    def delete_comment(self, comment_id):
        sql = "DELETE FROM `cookery_comments` WHERE `comment_id` = %s"
        self.cursor.execute(sql, (comment_id,))
        self.connection.commit()

    def update_comment(self, comment_id, category=None, content=None):
        fields = []
        values = []
        if category is not None:
            fields.append("`category` = %s")
            values.append(category)
        if content is not None:
            fields.append("`content` = %s")
            values.append(content)

        sql = "UPDATE `cookery_comments` SET " + ", ".join(fields) + " WHERE `comment_id` = %s"
        values.append(comment_id)
        self.cursor.execute(sql, tuple(values))
        self.connection.commit()

    def get_comment(self, comment_id):
        sql = "SELECT * FROM `cookery_comments` WHERE `comment_id` = %s"
        self.cursor.execute(sql, (comment_id,))
        result = self.cursor.fetchone()
        return result

    def get_all_comments(self):
        sql = "SELECT * FROM `cookery_comments`"
        self.cursor.execute(sql)
        results = self.cursor.fetchall()
        return results
