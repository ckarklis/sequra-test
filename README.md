# README

Ruby version: 2.6.6
Rails version: 6.0.4

## Project setup

- `bundle install`
- `bundle exec rails db:create db:migrate db:seed`

💡 You must run `db:seed` to create necessary data (merchant, shoppers and orders)

## Gems added

- `sidekiq and sidekiq-cron`: Run background job for disbursement calculation on specific frequency
- `has_scope`: Apply filters to disbursement API endpoint

## Business logic implementation

- `Disbursement` model was created to represent the order disbursement. It has both `order_id` and `merchant_id` so we can easilly search disbursements from specific merchants. `disbursed_at` represents the date that the disbursement was calculated and persisted.

- I chose to use `decimal` for amount values so we can get more precise values than float, for example.

- The [CreateDisbursementForOrdersWorker](https://github.com/ckarklis/sequra-test/blob/main/app/workers/create_disbursement_for_orders_worker.rb) is scheduled to run every Monday and runs a scope from `Order` that searches for completed orders with no disbursements, as specified in the rules.

- [CreateDisbursement](https://github.com/ckarklis/sequra-test/blob/main/app/services/create_disbursement.rb) service is responsible for creating the `Disbursement` and calculating the amount, based on the [disbursement fee](https://github.com/ckarklis/sequra-test/blob/main/app/models/order.rb#L8) from the order.

💡 The `external_id` from `Order` represents the id on CSV file. It wasn't ordered by id and I didn't know if it was a problem to create in a different order.

## Running disbursements calculation manually

- run `bundle exec sidekiq` in a tab from your terminal

- run `bundle exec rails c` in another tab, and then run `CreateDisbursementForOrdersWorker.perform_async`

The disbursements will be created after running this job. If you want to test more, you can create a new `Order` and run the commands above again.

## Running automated tests

`bundle exec rspec`

## API Documentation

### `GET v1/disbursements`

Returns all disbursements. This endpoint can receive the query params below:

- `from_merchant`: should be the merchant_id
- `from_week`: should be a date (`day/month/year`)

*Resquest example*

```
curl --location --request GET 'localhost:3000/v1/disbursements?from_week=01/01/2018&from_merchant=7'
```

*Response example*

```
[
  {
    "id": 2,
    "amount": "3.53005",
    "order_id": 19,
    "merchant_id": 7,
    "disbursed_at": "2018-01-01T00:00:00.000Z",
    "created_at": "2023-02-10T19:53:50.394Z",
    "updated_at": "2023-02-10T19:53:50.394Z"
  },
  {
    "id": 4,
    "amount": "0.626905",
    "order_id": 21,
    "merchant_id": 7,
    "disbursed_at": "2018-01-01T00:00:00.000Z",
    "created_at": "2023-02-10T19:53:50.404Z",
    "updated_at": "2023-02-10T19:53:50.404Z"
  },
  {
    "id": 40,
    "amount": "1.93002",
    "order_id": 57,
    "merchant_id": 7,
    "disbursed_at": "2018-01-01T00:00:00.000Z",
    "created_at": "2023-02-10T19:53:50.580Z",
    "updated_at": "2023-02-10T19:53:50.580Z"
  }
]
```

## Next steps

If I had to suggest the next steps for this project, it would be:

- Implement pagination for API endpoint
- Expose other endpoints, for example `GET /v1/merchants`, `GET /v1/orders`
- Use serializer to display disbursement date in a different format
- Add rubocop to check code quality
- Add Semaphore to the github project