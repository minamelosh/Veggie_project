require 'faker'

Month.create(:name => 'January')
Month.create(:name => 'February')
Month.create(:name => 'March')
Month.create(:name => 'April')
Month.create(:name => 'May')
Month.create(:name => 'June')
Month.create(:name => 'July')
Month.create(:name => 'August')
Month.create(:name => 'Semptember')
Month.create(:name => 'October')
Month.create(:name => 'Novemer')
Month.create(:name => 'December')


users = 50.times.map do
  User.create!( :first_name => Faker::Name.name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end


Vegetable.create(:name =>'artichoke')
Vegetable.create(:name =>'arugula')
Vegetable.create(:name =>'asparagus')
Vegetable.create(:name =>'eggplant')
Vegetable.create(:name =>'legumes')
Vegetable.create(:name =>'alfalfa sprouts')
Vegetable.create(:name =>'bean sprouts')
Vegetable.create(:name =>'green beans')
Vegetable.create(:name =>'soy beans')
Vegetable.create(:name =>'peas')
Vegetable.create(:name =>'snap peas')
Vegetable.create(:name =>'beet')
Vegetable.create(:name =>'bok choy')
Vegetable.create(:name =>'broccoli')
Vegetable.create(:name =>'brussels sprouts')
Vegetable.create(:name =>'cabbage')
Vegetable.create(:name =>'carrots')
Vegetable.create(:name =>'cauliflower')
Vegetable.create(:name =>'celery')
Vegetable.create(:name =>'chard')
Vegetable.create(:name =>'collard greens')
Vegetable.create(:name =>'mushrooms')
Vegetable.create(:name =>'spinach')
Vegetable.create(:name =>'okra')
Vegetable.create(:name =>'onion')
Vegetable.create(:name =>'chives')
Vegetable.create(:name =>'garlic')
Vegetable.create(:name =>'leeks')
Vegetable.create(:name =>'onion')
Vegetable.create(:name =>'shallot')
Vegetable.create(:name =>'scallion')
Vegetable.create(:name =>'bell pepper')
Vegetable.create(:name =>'carrot')
Vegetable.create(:name =>'daaikon')
Vegetable.create(:name =>'ginger')
Vegetable.create(:name =>'parsnip')
Vegetable.create(:name =>'turnip')
Vegetable.create(:name =>'radish')
Vegetable.create(:name =>'turnip')
Vegetable.create(:name =>'white radish')
Vegetable.create(:name =>'squashes')
Vegetable.create(:name =>'acorn squash')
Vegetable.create(:name =>'butternut squash')
Vegetable.create(:name =>'banana squash')
Vegetable.create(:name =>'zucchini')
Vegetable.create(:name =>'cucumber')
Vegetable.create(:name =>'pumpkin')
Vegetable.create(:name =>'spaghetti squash')
Vegetable.create(:name =>'tomato')
Vegetable.create(:name =>'potato')
Vegetable.create(:name =>'sweet potato')
Vegetable.create(:name =>'yam')
Vegetable.create(:name =>'turnip greens')
Vegetable.create(:name =>'water chestnut')
Vegetable.create(:name =>'watercress')
Vegetable.create(:name =>'zucchini')




# channels = ["Telemundo", "Unimas ", "Azteca 13", "Mexiquense",
#  "ESPN", "Fox Sports", "NBC Sports", "Big Ten Network", "Nickelodeon"].map do |name|
#   Channel.create!(:name            => name,
#                   :callsign        => name[0..2].upcase,
#                   :price_per_month => Faker::Commerce.price)
# end

users.each do |user|
  user_veggies = vegetables.sample(rand(2..4))
  user_veggies.each do |veggie|
    UserVeggies.create!(user: user,
                         vegtable: vegetable)
  end
end
