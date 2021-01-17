require "test_helper"

class BookFormatTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_format_type = book_format_types(:one)
  end

  test "should get index" do
    get book_format_types_url
    assert_response :success
  end

  test "should get new" do
    get new_book_format_type_url
    assert_response :success
  end

  test "should create book_format_type" do
    assert_difference('BookFormatType.count') do
      post book_format_types_url, params: { book_format_type: { name: @book_format_type.name, physical: @book_format_type.physical } }
    end

    assert_redirected_to book_format_type_url(BookFormatType.last)
  end

  test "should show book_format_type" do
    get book_format_type_url(@book_format_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_format_type_url(@book_format_type)
    assert_response :success
  end

  test "should update book_format_type" do
    patch book_format_type_url(@book_format_type), params: { book_format_type: { name: @book_format_type.name, physical: @book_format_type.physical } }
    assert_redirected_to book_format_type_url(@book_format_type)
  end

  test "should destroy book_format_type" do
    assert_difference('BookFormatType.count', -1) do
      delete book_format_type_url(@book_format_type)
    end

    assert_redirected_to book_format_types_url
  end
end
