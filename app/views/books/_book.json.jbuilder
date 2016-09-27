json.extract! book, :id, :title, :author, :issued_on, :due_date, :rating, :user_id, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)