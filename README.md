# README

Description: This is a Bookstore App written in Ruby on Rails that allows users to view books, authors, and publishers (i.e. Book, Author, and Publisher models). Users can add, update, remove, and view books, authors, and publishers as well as a search bar to query books using keywords (functionality described below).

Search:
- Searches and retrieves books with:
  * Titles that closely match the name column of the Book Model Table in the schema.
  * Authors that match a non-case sensitive string from the Author Model Table and using the author ID to query the Books table

In progress:
- Allow the search query to search for author or publisher matching an exact string in the Author and Publisher tables. This will return a collection of books that match the author_id and publisher_id fields of the Book Table to find books that belong to an author or publisher.
- Search and retrieve collections of book formats and types

