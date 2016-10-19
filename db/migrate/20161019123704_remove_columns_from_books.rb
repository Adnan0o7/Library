class RemoveColumnsFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :issued_on, :date
    remove_column :books, :due_date, :date
  end
end
