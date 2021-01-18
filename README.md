# README

Description: This is a Bookstore App written in Ruby on Rails that allows users to view books, authors, and publishers (i.e. Book, Author, and Publisher models). Users can add, update, remove, and view books, authors, and publishers as well as a search bar to query books using keywords (functionality described below).

Search:
- Searches and retrieves books with:
  * Titles that closely match the name column of the Book Model Table.
  * Authors that match a non-case sensitive string from the Author Model Table using author_id
  * Publishers that match a non-case sensitive string from the Publisher Model Table using publisher_id

In progress:
- Add instance methods to Book.rb
- Search and retrieve collections of book formats and types

Screenshots:
Index Landing Page (Displays all books by default i.e. @books = all)
![alt text](https://i.ibb.co/MPT1jqr/index-page.png)
