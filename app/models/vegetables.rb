class Vegetables < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  validates :nutrition_facts, presence: true

  has_many :months
  #double check many-to-many through? syntax??
  has_many :users, source: UserVeggies
end
