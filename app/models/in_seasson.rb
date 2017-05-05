class InSeasson < ActiveRecord::Base
  # Remember to create a migration!

  belongs_to :vegetables
  belongs_to :months

end
