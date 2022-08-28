class Post < ApplicationRecord
   belongs_to :customer
   has_many :favorites
   has_many :comments
   has_one_attached :image

   def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
   end
   def favorited?(customer)
   favorites.where(customer_id: customer.id).exists?
   end
end
