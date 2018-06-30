# Practice Fusion Challenge
This is a simple API that fufills the requirements of the Practice Fusion code challenge. Doctors are listed, and viewing an individual doctor resource will show related doctors, chosen by speciality, and ordered by user rating. The application comes with pre-seeded data. 

## Local Installation

Please note this application requires postgres db to be installed and configured to run.

Clone the repo. `cd` into the root directory, and run `bundle install` to install all dependencies. 

Run `rake db:create` to create the database, followed by `rake db:migrate` to run all migrations. Finally, seed the database with `rake db:seed`

To run the API, run `rails s`.

## API Endpoints

```http
GET /doctors
```
Returns JSON containing all doctors

```http
GET /doctors/:id
```
Returns specified doctor object, and an array containing related doctors. Related doctors share a similiar specialty, and are ordered from highest to lowest rating.

```http
POST /doctors
```
Request body must contain JSON in the following format:

```javascript
{
  first_name: "First Name",
  last_name: "Last Name",
  location: "City, State"
}
```
Creates a new doctor object.

```http
POST /doctors/:id/ratings
```
Request body must contain JSON in the following format:

```javascript
{
  score: "Any integer or float from 1-5",
  review_text: "Review for doctor goes here"
}
```
Creates a new rating for the specified doctor in the URI.
