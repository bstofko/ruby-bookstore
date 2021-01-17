require "test_helper"

class BookFormatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_format = book_formats(:one)
  end

  test "should get index" do
    get book_formats_url
    assert_response :success
  end

  test "should get new" do
    get new_book_format_url
    assert_response :success
  end

  test "should create book_format" do
    assert_difference('BookFormat.count') do
      post book_formats_url, params: { book_format: { book_format_type_id: @book_format.book_format_type_id, book_id: @book_format.book_id } }
    end

    assert_redirected_to book_format_url(BookFormat.last)
  end

  test "should show book_format" do
    get book_format_url(@book_format)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_format_url(@book_format)
    assert_response :success
  end

  test "should update book_format" do
    patch book_format_url(@book_format), params: { book_format: { book_format_type_id: @book_format.book_format_type_id, book_id: @book_format.book_id } }
    assert_redirected_to book_format_url(@book_format)
  end

  test "should destroy book_format" do
    assert_difference('BookFormat.count', -1) do
      delete book_format_url(@book_format)
    end

    assert_redirected_to book_formats_url
  end
end
