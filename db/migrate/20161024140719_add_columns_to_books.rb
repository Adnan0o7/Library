class AddColumnsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :issued, :boolean
    add_column :books, :date_of_issue, :date
    add_column :books, :return_date, :date
  end
end
