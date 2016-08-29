class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :author, :string
    add_column :books, :isbn, :string
    add_column :books, :user_id, :integer
    add_column :books, :rating, :string
  end
end
