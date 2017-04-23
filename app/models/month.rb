class Month < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :vegetables
end
