class AddColumnsToIssueBook < ActiveRecord::Migration[5.1]
  def change
    add_column :issue_books, :book_id, :numeric
    add_column :issue_books, :issued, :boolean
  end
end
