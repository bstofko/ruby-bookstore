class Book < ApplicationRecord
  belongs_to :author
  has_many :book_reviews

  def self.search(query, title_only=true, book_format_physical:nil, book_format_type_id:nil)
      
    if query
      if title_only==true 
        where(["title LIKE ?","%#{query.capitalize}%"])
        #find_by title: "#{query.capitalize}".first

      elsif title_only==false 
        author = Author.where(["last_name = ?","#{query.capitalize}"]).take
        publisher = Publisher.where(["name = ?","#{query.capitalize}"]).take
        if author
          where(["author_id = ?", author.id])
        # join books where author id
        elsif publisher
          where(["publisher_id = ?", publisher.id])
        else
          none
        end 
      #else
      end
      
    else
      all
    end
  end

  def self.test()
    Author.all
  end

  def author_name
    author = Author.find(author_id)
    puts "#{author.last_name}, #{author.first_name}"
  end

  def average_rating

  end

end
