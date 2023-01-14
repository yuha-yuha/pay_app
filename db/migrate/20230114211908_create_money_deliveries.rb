class CreateMoneyDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :money_deliveries do |t|
      t.integer :send_user_id
      t.integer :recipient_user_id
      t.integer :money

      t.timestamps
    end
    add_index :money_deliveries, :send_user_id
    add_index :money_deliveries, :recipient_user_id
  end
end
