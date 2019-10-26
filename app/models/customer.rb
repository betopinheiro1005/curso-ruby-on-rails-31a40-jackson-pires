class Customer < ApplicationRecord

  has_one :address

  accepts_nested_attributes_for :address

  scope :search, -> (query) {where("name like ?", "%#{query}%")}

#  def self.search(query)
#    where("name like ?", "%#{query}%")
#  end
end
