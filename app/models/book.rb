class Book < ApplicationRecord
  belongs_to :author
  has_many :book_reviews
  has_many :book_format_types

  def self.search(query, title_only=false, book_format_physical=nil, book_format_type_id=nil)
      
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
    reviews = BookReview.where(["book_id = ?", id])
    count = 0.0
    reviews.each { |x| 
    count += x.rating.to_f }
    puts "Average Rating across #{reviews.size} reviews: " + "#{(count/reviews.size).round(2)}"
  end

  def book_format_types
    # This needs to be implemented as some kind of union
    types = BookFormat.where(["book_id = ?", id])
    formats = ""

    types.each { |x|
      # Testing
      puts x.book_format_type_id
      formats.push(BookFormatType.where(["id = ?", x.book_format_type_id]))
    }
    
    formats.each { |x|
      puts x.name
    }
    puts "Available in: " + formats
  end

end
