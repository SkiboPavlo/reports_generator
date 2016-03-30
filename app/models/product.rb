class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  field :count, type: Integer
  field :sum, type: Float
  belongs_to :template
  before_save :calculate_sum
  validates_presence_of :name
  validates_numericality_of :price
  validates_numericality_of :count

  def calculate_sum
    self.sum = self.price * self.count
  end
end
