class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :external_id, null: false
      t.references :merchant, null: false, foreign_key: true
      t.references :shopper, null: false, foreign_key: true
      t.decimal :amount, null: false
      t.datetime :completed_at, default: ""

      t.timestamps
    end
  end
end
