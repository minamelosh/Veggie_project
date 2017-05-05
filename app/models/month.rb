class Month < ActiveRecord::Base
  validates :name, presence: true

  has_many :vegetables, source: InSeason
end
