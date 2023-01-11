class Post < ApplicationRecord
 validates :title, presence: true
 validates :content, length: {minimum: 250}
 validates :summary, length: {minimum: 250 ,maximum: 250 }
 validates :category, inclusion: { in: ['Fiction', or 'Non-Fiction'] }
  
     validate :clickbait 

       def clickbait
         unless title.match?("Won't Believe", "Secret","Top [number]", "guess" )
          errors.add(:clickbait "must contain...")
      end  
   end
end

  