class Product < ApplicationRecord
  has_many :baskets

  
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :rating, inclusion: { in: 1..5 }

  # def nocomment
  #   if comments nil?
  #     puts 'No comment has been made so far.'
  #   else
  #     comments
  #   end
  # end

end
