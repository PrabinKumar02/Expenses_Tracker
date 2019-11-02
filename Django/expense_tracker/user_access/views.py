import json
from django.shortcuts import render
from django.http import JsonResponse
from . import connection
from django.views.decorators.csrf import csrf_exempt


# Create your views here.
@csrf_exempt
def login(request):
	if request.method == 'POST':
		try:
			json_data = request.body
			print(json_data)
			request_data = json.loads(json_data)
			user_name = request_data["userName"]
			password = request_data["password"]
			print(user_name)
			print(password)
			res = connection.login_access(user_name)
			print(res)
			res = [x for i in res for x in i]
			print(res)
			res_data={}
			if res.count != 0:
				if password == res[0]:
					res_data['Access'] = 1
				else:
					res_data['Access'] = 0
			else:
				res_data['Access'] = -1
			print(res_data)
			# res = json.dumps(res)
			# print(res)
		except:
			return HttpResponseBadRequest('Bad Request')
		return JsonResponse(res_data, safe=False)
	else:
		return HttpResponseBadRequest('NOT GET METHOD')

@csrf_exempt
def forget(request):
	if request.method == 'POST':
		try:
			json_data = request.body
			print(json_data)
			request_data = json.loads(json_data)
			email = request_data["email"]
			res = connection.forget_pass(email)
			res = [x for i in res for x in i]
			res_data={}
			if res.count != 0:
				res_data['Question'] = res[0]
				res_data['Answer'] = res[1]
			else:
				res_data['Question'] = -1
			print(res_data)
		except:
			return HttpResponseBadRequest('Bad Request')
		return JsonResponse(res_data, safe=False)
	else:
		return HttpResponseBadRequest('NOT GET METHOD')

@csrf_exempt
def new_user(request):
	pass

	