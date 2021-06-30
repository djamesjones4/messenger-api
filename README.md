# Messenger-API
<hr/>

## End Points

### Users
  <strong>New User:</strong> `Post /users` <br>
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

<hr/>

### Conversations
A conversation consists of a primary key and a participants column. Conversations consist of multiple users. The `New Conversation` endpoint should be hit after a user has selected the list of users they would like to add to a conversation. Conversations are continuous between participants.

<strong>New conversation:</strong> `POST /conversations`
  - params:
  {
    <strong>participants:</strong> integer array [int, int, ...]
  } <br>

<hr/>

### Messages
Messages are individual comments made within a conversation.<br>

Messages consist of the message's:<br>

 &nbsp;&nbsp;&nbsp;`content` - the body of the message,<br>
 &nbsp;&nbsp;&nbsp;`conversation_id` - a foreign key referencing the &nbsp;&nbsp;&nbsp;`conversation` table,<br>
 &nbsp;&nbsp;&nbsp;`from_user_id` - a foreign key referencing the `user` table<br>

<strong>New Message:</strong> `POST /messages`<br>
  - params: {
    <strong>content:</strong> string,
    <strong>conversation_id:</strong> integer,
    <strong>from_user_id:</strong> integer
  }<br>

<strong>Get Message by ID:</strong> `GET /messages/:id`<br>
<strong>Edit Message:</strong> `PATCH/PUT /messages/:id`<br>
<strong>Destroy Message:</strong> `DELETE /message/:id`<br>
