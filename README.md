# Next Level Week 4 - Rocketpay

To start the Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start the Postgres database server with `docker-compose up -d` 
  * Create and migrate the database with `mix ecto.setup`
  * Start Phoenix endpoints with `mix phx.server`

Visit [`http://localhost:4000/dashboard`](http://localhost:4000/dashboard) from your browser.

## API

### Security

**Basic Authentication**  
**Username:** nlw4  
**Password:** elixir

### Endpoints

#### POST /api/users
Create a new user and an account.

**Example body**
```json
{
  "name": "User Name",
  "password": "123456",
  "nickname": "usernick",
  "email": "user@email.com",
  "age": 42
}
```

#### POST /api/accounts/:account_id/deposit
Deposit a value into an account.

**Path parameters**
* **account_id:** Account UUID.

**Example body**
```json
{
  "value": "152.00",
}
```

#### POST /api/accounts/:account_id/withdraw
Withdraw a value from an account.

**Path parameters**
* **account_id:** Account UUID.

**Example body**
```json
{
  "value": "21.50",
}
```
#### POST /api/accounts/transaction
Performs a balance transfer between two accounts.

**Example body**
```json
{
  "from": "195b61b8-5efe-4031-b997-e1728dc5ef13",
  "to": "e6e8344c-8d09-463f-b3e0-38cbe90e8286",
  "value": "1.23"
}
```

## What I Learned

* Start a new project with Elixir and Phoenix
* Elixir syntax
* Elixir pattern matching and pipe operator
* Functional programming style 
* GET and POST endpoints
* Controllers, Fallback controller and Views
* Ecto.Schema with fields, foreign key, changeset, validations and constraints
* Ecto migrations
* Ecto.Multi
* Facades with defdelegate
* Pipeline with Basic authentication
* Units tests for modules, controllers and views
* Test coverage report with excoveralls