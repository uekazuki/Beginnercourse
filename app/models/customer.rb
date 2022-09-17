class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          has_one_attached :image
  
  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
  
  def is_guest?
    if email =='guest@example.com' 
      return true
    else
      return false
    end
  end
  
  
  has_many :posts
  has_many :favorites
  
end
