# README

FREENYC API has data on the free in-person classes in NYC. Uses PostgreSQL for database. Uses bcrypt for salting passwords. 

## INSTALLATION

1. Clone this repo onto your computer.
2. Go to repo and run `bundle install` in terminal.
3. Open PostgreSQL.
4. Run `rails db:create && rails db:migrate`.
5. Start server `rails server` or `rails s`.

## ROUTES

For now, since this is not deployed, it will be your localhost domain + routes. Just add the following to the routes!

Example: `http://localhost:3000/api/v1/comments`

### COURSES

Courses index:
* GET: `/api/v1/courses`

Single course details:
* GET: `/api/v1/courses/:id`

### FAVORITES

Create favorite (requires user email and course ID):
* POST: `api/v1/favorites`

Delete favorite (requires user email and course ID):
* DELETE: `api/v1/favorites`

### COMMENTS

Comment index:
* GET: `api/v1/comments`

Single comment details:
* GET: `api/v1/comments/:id`

Create comment (requires user email and course ID):
* POST: `api/v1/comments`

Edit comment:
* PATCH/PUT `api/v1/comments/:id`

Delete comment:
* DELETE: `api/v1/comments/:id`


