class AddColumnsToIssueBook < ActiveRecord::Migration
  def change
    add_column :issue_books, :book_id, :numeric
    add_column :issue_books, :issued, :boolean
  end
end
