require 'test_helper'

class IssueBooksControllerTest < ActionController::TestCase
  setup do
    @issue_book = issue_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issue_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue_book" do
    assert_difference('IssueBook.count') do
      post :create, issue_book: {  }
    end

    assert_redirected_to issue_book_path(assigns(:issue_book))
  end

  test "should show issue_book" do
    get :show, id: @issue_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue_book
    assert_response :success
  end

  test "should update issue_book" do
    patch :update, id: @issue_book, issue_book: {  }
    assert_redirected_to issue_book_path(assigns(:issue_book))
  end

  test "should destroy issue_book" do
    assert_difference('IssueBook.count', -1) do
      delete :destroy, id: @issue_book
    end

    assert_redirected_to issue_books_path
  end
end
