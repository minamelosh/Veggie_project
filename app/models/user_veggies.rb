class UserVeggies < ActiveRecord::Base
  belongs_to :user
  belongs_to :vegetables


end
