class AddColumnsToIssueBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :issue_books, :issued_on, :date
    add_column :issue_books, :due_date, :date
  end
end
