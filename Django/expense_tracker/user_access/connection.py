from django.db import connection


def login_access(user_name):
	sql = "SELECT password FROM et_user_master WHERE user_name = :user_name"
	cur = connection.cursor()
	cur.execute(sql, {"user_name":user_name})
	res = cur.fetchall()
	return res

def forget_pass(email):
	sql = "SELECT sec_question,sec_ans FROM et_user_master WHERE email_id = :email"
	cur = connection.cursor()
	cur.execute(sql, {"email":email})
	res = cur.fetchall()
	return res

def register_user():
	pass

