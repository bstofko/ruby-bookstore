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
<br/><br/><strong>Index Landing Page (Displays all books by default i.e. @books = all)</strong>
![alt text](https://i.ibb.co/MPT1jqr/index-page.png)

<br/><br/><strong>Add New Book</strong>
![alt text](https://i.ibb.co/FBmgMLX/new-book-form.png)

<br/><br/><strong>Authors Page</strong>
![alt text](https://i.ibb.co/P60X8Zb/authors-page.png)

<br/><br/><strong>Search by Book Title</strong>
![alt text](https://i.ibb.co/pR0NCgv/search-by-title.png)

<br/><br/><strong>Search by Author Last Name</strong>
![alt text](https://i.ibb.co/Kjb2BNQ/search-by-author.png)

