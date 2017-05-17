class Vegetables < ActiveRecord::Base
  validates :name, presence: true
  validates :average_price, presence: true

  has_many :months, source: InSeason
  #double check many-to-many through? syntax??
  has_many :users, source: UserVeggies
end
