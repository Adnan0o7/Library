class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :book_id, :integer
    add_column :users, :address, :string
    add_column :users, :phone_no, :string
  end
end
