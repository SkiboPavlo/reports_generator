class Template
  include Mongoid::Document
  field :name, type: String
  has_many :products
  validates_presence_of :name
  validates_uniqueness_of :name
end
