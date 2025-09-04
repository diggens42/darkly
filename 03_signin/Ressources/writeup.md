on the signin page you're asked for a username and password

when you just enter whatever into the fields and submit, the username and  password a simply submitted as a POST request and you get to this URL:

http://localhost:8080/?page=signin&username=123&password=321&Login=Login

now we downloaded a .txt file with 100 000 000 common passwords in it

with a bash script, we try to bruteforce the login for the username "admin" by injecting the passwords into the URL

username: admin
password: shadow

FIX: strong password policy or limit requests on server side