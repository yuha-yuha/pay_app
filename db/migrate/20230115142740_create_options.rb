class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    change_column_null :users, :money, false
    change_column_default :users, :money, from: nil, to: 0
  end
end
