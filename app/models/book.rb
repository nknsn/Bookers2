class Book < ApplicationRecord
 
  belongs_to :User
  has_one_attached :profile_imaage
  
  
end
