class Product < ApplicationRecord
  validates(:name, :description, :image, presence:true )
  validates(:price,numericality: {greater_than_or_equal_to: 0.01})
  validates(:image,format: {with: %r{\.(gif|jpg|png)\Z}i,message:"Must be gif,jpg or png images"})
  has_many :lineitems
  before_destroy :make_sure_this_product_is_not_a_lineitem
  def make_sure_this_product_is_not_a_lineitem
    if self.lineitems.empty?
      return true
    else
      return false
    end
  end
end
