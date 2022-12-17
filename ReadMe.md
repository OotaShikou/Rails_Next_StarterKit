### アプリケーションの起動方法
```
$ docker-compose build && docker-compose run --rm frontend yarn install && docker-compose run --rm backend rails db:create && docker-compose up -d --build
```
<hr />

### pgadmin
```
Name: app_development
Host: db
Port: 5432
DBName: app_development
UserName: postgres
password: password
```
<hr />

### login check
```
sign up
curl -X POST http://localhost/manage/api/v1/auth -d '[name]=test&[email]=test@example.com&[password]=password&[password_confirmation]=password'
```
```
login
curl localhost/manage/api/v1/auth/sign_in -X POST -d '{"email":"test@example.com", "password":"password"}' -H "content-type:application/json" -i
```
```
signout
curl localhost/manage/api/v1/auth/sign_out -X DELETE -H "uid: test@example.com" -H "client: login時に取得したclient" -H "access-token: login時に取得したaccess-token"
```
```
destroy
curl localhost/manage/api/v1/auth -X DELETE -H "uid: test@example.com" -H "client: login時に取得したclient" -H "access-token: login時に取得したaccess-token"
```
```
getCurrentUser
curl localhost/manage/api/v1/auth/sessions -X GET -H "uid: test@example.com" -H "client: login時に取得したclient" -H "access-token: login時に取得したaccess-token"
```