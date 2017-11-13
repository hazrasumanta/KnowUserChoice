# Very Simple Rails Api to login and signup user and find topics of interest 
# Rails and Ruby version
* Ruby 2.4.0p0

* Rails 5.1.4

* Database Mysql
# Steps to perform
* bundle install

* rake db:create / rails db:create

* rake db:migrate / rails db:migrate

* rake db:seed / rails db:seed :+1:
# Some links
* Use this link to Signup [http://localhost:3000/users/signup](http://localhost:3000/users/signup)
```
{
	"name": "sumanta",
  "phone": "9040451287",
  "email": "hazrasumanta@gmail.com",
  "password":"sumanta4321",
  "password_confirmation":"sumanta4321"
}
```
	if successfully
```
{
  "status": "ok",
  "message": "user_created"
}
```
	else
```
{
  "status": "false",
  "message": "user_not_created"
}
```
* Use this link to Login [http://localhost:3000/session/login](http://localhost:3000/session/login) 
```
{
	"email":"hazrasumanta@gmail.com",
	"password":"sumanta123"
}
```
	if successfully

```
{
  "name": "sumanta",
  "phone": "9040451287",
  "email": "hazrasumanta@gmail.com",
  "last_sign_in_at": "2017-11-13T18:12:06.000Z",
  "token": "ylsypyrjbcfxpnfsdcpuzxraptssejyiuanlkmwenhmdnwmmdo"
}
```
	else
```
{
  "status": "false",
  "message": "wrong_email_id_or_password"
}
```
* Use this link to view user interested [http://localhost:3000/users/topics](http://localhost:3000/users/topics)
You have send user token
```
{
	"token":"ylsypyrjbcfxpnfsdcpuzxraptssejyiuanlkmwenhmdnwmmdo"
}
```
 if successfully

```
[
    {
        "id": 16,
        "topic": "Cooking"
    },
    {
        "id": 8,
        "topic": "Shoping"
    },
    {
        "id": 20,
        "topic": "Acting"
    },
    {
        "id": 7,
        "topic": "Swiming"
    },
    {
        "id": 19,
        "topic": "Modeling"
    },
    {
        "id": 11,
        "topic": "Dancing"
    },
    {
        "id": 9,
        "topic": "Gamming"
    },
    {
        "id": 1,
        "topic": "Photography"
    },
    {
        "id": 5,
        "topic": "Rock Music"
    },
    {
        "id": 14,
        "topic": "Teaching"
    },
    {
        "id": 2,
        "topic": "Space"
    },
    {
        "id": 3,
        "topic": "Sports"
    },
    {
        "id": 4,
        "topic": "Cars"
    },
    {
        "id": 6,
        "topic": "Painting"
    },
    {
        "id": 10,
        "topic": "Coding"
    },
    {
        "id": 12,
        "topic": "Travelling"
    },
    {
        "id": 13,
        "topic": "Movie"
    },
    {
        "id": 15,
        "topic": "Ridding"
    },
    {
        "id": 17,
        "topic": "Gyming"
    },
    {
        "id": 18,
        "topic": "Social Media"
    }
]
```

* Use this link to view user interested [http://localhost:3000/topic/users?topic=Shoping](http://localhost:3000/topic/users?topic=Shoping)

```
[
    {
        "name": "sumanta",
        "phone": "9998760008",
        "email": "hazrasumantaa@gmail.com"
    },
    {
        "name": "sumanta Hazra",
        "phone": "9040451287",
        "email": "hazrasumanta@gmail.com"
    }
]
```

Thats all :+1: