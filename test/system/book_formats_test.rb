require "application_system_test_case"

class BookFormatsTest < ApplicationSystemTestCase
  setup do
    @book_format = book_formats(:one)
  end

  test "visiting the index" do
    visit book_formats_url
    assert_selector "h1", text: "Book Formats"
  end

  test "creating a Book format" do
    visit book_formats_url
    click_on "New Book Format"

    fill_in "Book format type", with: @book_format.book_format_type_id
    fill_in "Book", with: @book_format.book_id
    click_on "Create Book format"

    assert_text "Book format was successfully created"
    click_on "Back"
  end

  test "updating a Book format" do
    visit book_formats_url
    click_on "Edit", match: :first

    fill_in "Book format type", with: @book_format.book_format_type_id
    fill_in "Book", with: @book_format.book_id
    click_on "Update Book format"

    assert_text "Book format was successfully updated"
    click_on "Back"
  end

  test "destroying a Book format" do
    visit book_formats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book format was successfully destroyed"
  end
end
