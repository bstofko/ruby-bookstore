class Book < ApplicationRecord
  belongs_to :author
  has_many :book_reviews

  def self.search(query, title_only=false, book_format_physical:true)
      
    if query
      if title_only==true 
        where(["title LIKE ?","%#{query.capitalize}%"])
        #find_by title: "#{query.capitalize}".first

      elsif title_only==false 
        author = Author.where(["last_name = ?","#{query.capitalize}"]).take
        if author
          where(["author_id = ?", author.id])
        # join books where author id
        #pub = Publisher.where([{"name LIKE ?","%#{query}"}])
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
  end

end
