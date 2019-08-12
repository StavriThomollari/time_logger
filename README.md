# README

In this Task:
1. An user can sign up, signin, signout. http://165.22.74.147/users/sign_in
2. If signed in he can add timelogs for each project. (I did not add the logDate as a column because i used the created_at)
3. Created the REST API. So the user can authentificate with his email and password. (I used the jwt gem for this.)
    Also he can create a new timelog/report or see all the existing ones.
4. Used swagger (rswag gem) to document the rest api. http://165.22.74.147/api-docs/index.html
  a. About this in order to test it, you have to authentificate first.
  At the top */api/authenticate Authentificate* if you can enter the email & password like "stavrithomollari@outlook.com" & "f0d79d58" the response with be the email and the auth token. The token can be used to test the other rest api.
5. deployed the code on DigitalOcean. http://165.22.74.147/users/sign_in
