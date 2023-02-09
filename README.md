# README

Disbursement model:
  - order_id
  - amount
  - merchant_id (?)

calculate_disbursement(date)
- get week range date
- find orders with completed_at in week range
- for each order, create disbursement
* use background job
* optional: create rake task to run background job (?)



Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
