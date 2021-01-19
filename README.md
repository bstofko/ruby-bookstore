# README

Description: This is a Bookstore App written in Ruby on Rails that allows users to view books, authors, and publishers (i.e. Book, Author, and Publisher models). Users can add, update, remove, and view books, authors, and publishers as well as a search bar to query books using keywords (functionality described below).

Search:
- Searches and retrieves books with:
  * Titles that closely match the name column of the Book Model Table.
  * Authors that match a non-case sensitive string from the Author Model Table using author_id
  * Publishers that match a non-case sensitive string from the Publisher Model Table using publisher_id
- Instance methods return the Author Name and Average Rating for an instantiated book

In progress:
- Search and retrieve collections of book formats and types
- Add functionality in views for instance methods, etc.

Screenshots:<br/>

<br><br/><strong>Console</strong>
<br/>Class Method - Search<br/>
![alt text](https://i.ibb.co/hRQNPcd/search-book-console.png)
<br/>Instance Method - Author Name<br/>
![alt text](https://i.ibb.co/fCnYYH6/author-name-console.png)
<br/>Instance Method - Average Rating<br/>
![alt text](https://i.ibb.co/gFq8Jsy/avg-rating-console.png)

<br><br/><strong>Views</strong>
<br/><strong>Index Landing Page (Displays all books by default i.e. @books = all)</strong>
![alt text](https://i.ibb.co/MPT1jqr/index-page.png)

<br/><br/><br/><strong>Add New Book</strong>
![alt text](https://i.ibb.co/FBmgMLX/new-book-form.png)

<br/><br/><br/><strong>Authors Page</strong>
![alt text](https://i.ibb.co/P60X8Zb/authors-page.png)

<br/><br/><br/><strong>Search by Book Title</strong>
![alt text](https://i.ibb.co/pR0NCgv/search-by-title.png)

<br/><br/><br/><strong>Search by Author Last Name</strong>
![alt text](https://i.ibb.co/Kjb2BNQ/search-by-author.png)

