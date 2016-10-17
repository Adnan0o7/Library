json.extract! issue_book, :id, :created_at, :updated_at
json.url issue_book_url(issue_book, format: :json)