module BooksHelper

	def book_issued?(book)
    book.issued == true
  end

  def display_return_link?(book)
    book_issued?(book) && (book.user_id == current_user.id)
  end

  def display_issue_or_return_link(book)
    if display_return_link?(book)
      link_to 'Return This Book', return_book_path(book),:method => :put, data: {confirm: 'Are you sure'},:class => 'btn btn-block btn-success'
    elsif book_issued?(book)
      link_to 'Book already issued', '#',:class => 'btn btn-block btn-success disabled'
    else
      link_to 'Issue This Book', issue_book_path(book),:method => :put, data: {confirm: 'Are you sure'},:class => 'btn btn-block btn-success'
    end
  end

  def display_crud_link(book)
    str = ""
    if can? :crud, Book
      str += "#{link_to 'Edit Book Details', edit_book_path(book), :method => :get, :class => 'btn btn-block btn-primary'}"
      str += "#{link_to 'Delete This Book', book, :class => 'btn btn-block btn-danger', :method => :delete, data: { confirm: 'Are you sure?' } }"
    end
    str
  end

end
