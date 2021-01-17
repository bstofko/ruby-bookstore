class Book < ApplicationRecord
  belongs_to :author

  def self.search(query)
    if query
        where(["title LIKE ?","%#{query}%"])
    else
        all
    end
  end 

end
