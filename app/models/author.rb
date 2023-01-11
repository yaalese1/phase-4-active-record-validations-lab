class Author < ApplicationRecord
    validates :name, presence: true ,uniqueness: true #but when in the console i added the same author name 
    validates :phone_number , length:{is:10}
    
end
