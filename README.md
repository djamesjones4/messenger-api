# Messenger-API

## End Points

### Users
  New User: `Post /users` <br>
    - params:<br>
    {<br>
        <strong>id:</strong> integer,<br>
        <strong>first_name:</strong> string,<br>
        <strong>last_name:</strong> string,<br>
        <strong>email:</strong> string,<br>
        <strong>username:</strong> string,<br>
    }<br>
  <strong>User Index:</strong> `Get /users` <br>
  <strong>Get individual user:</strong> `GET /users/:id`<br>
  <strong>Edit user:</strong> `PATCH/PUT /users/:id`<br>
  <strong>Destroy user:</strong> `DELETE /user/:id`<br>
