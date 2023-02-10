class CreateDisbursements < ActiveRecord::Migration[6.0]
  def change
    create_table :disbursements do |t|
      t.decimal :amount, null: false
      t.references :order, null: false, foreign_key: true
      t.references :merchant, null: false, foreign_key: true
      t.datetime :disbursed_at

      t.timestamps
    end
  end
end
