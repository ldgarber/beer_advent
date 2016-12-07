# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.destroy_all
Beer.destroy_all
Event.destroy_all

names = ["Bridget", "Vinny", "Alex", "Caitlin", "Sylvia", "Ruthie", "Sherry", "Wes", "Brianna", "Emily W", "Izzy", "Dagney", "Nicholas", "Patrick", "Kyla", "Leah", "Rachel", "Bucky", "", "Ryan", "Big Cat", "", "Clara Nice", ""]

beers = [ 
  Beer.create(
    name: "Magic Hat Session IPA", 
    abv: 4.5, 
    description: "A Session IPA tuned to the key of ease with a tropical hop lead and smooth malt base."
  ), 
  Beer.create( 
    name: "Rogue Dead Guy Ale", 
    abv: 6.5, 
    description: "An ale inspired by the style of a German Maibock, Dead Guy Ale is deep honey in color with a malty aroma, rich hearty flavor and a well balanced finish."
  ), 
  Beer.create( 
    name: "Sierra Nevada Celebration", 
    abv: 0.0, 
    description: "Famous for its intense citrus and pine aromas, Celebration is bold and intense, featuring Cascade, Centennial and Chinook hops—honoring everything we have at Sierra Nevada."
  ), 
  Beer.create(
    name: "Dogfish Beer for Breakfast", 
    abv: 7.4, 
    description: "A stout tricked out with all sorts of breakfast ingredients including Guatemalan Antigua cold press coffee, Maple syrup harvested from Western Massachusetts and for the quintessential Delaware breakfast touch - Rapa Scrapple and their secret blend of spices."
  ), 
  Beer.create( 
    name: "Dyckman Pilsner", 
    abv: 5.0, 
    description: "With a deep golden color and thin white head, Dyckman Brew’s slightly sweet aroma is characterized by an undertone of pale malts and citrus notes. This premium lager is cool fermented and aged for six weeks to create an exceedingly balanced malty-sweet flavor with a spicy finish. It boasts a smooth, rich, and refreshing feel." 
  ), 
  Beer.create(
    name: "Shiner Bock", 
    abv: 4.4, 
    description: "Brewed with rich roasted barley malt and German specialty hops, this lightly hopped American-style dark lager always goes down easy."
  ), 
  Beer.create( 
    name: "Southern Tier Old Man Seasonal Ale", 
    abv: 7.5, 
    description: "A rich marriage of hops and barley to cast light upon the evening and melt your mind out of the snowdrifts. Old Man Winter's earthy hue and thickness lace around the glass, inviting you to linger in its warmth and share the spirit of the season with your family and friends."
  ), 
  Beer.create( 
    name: "Rogue Santa's Private Reserve Ale", 
    abv: 5.0, 
    description: "A double hopped Red Ale, reddish in color with a roasty, malty flavor and a well balanced spruce finish."
  ), 
  Beer.create( 
    name: "Harpoon Winter Warmer", 
    abv: 5.9, 
    description: "Brewed since 1988, this beer has become a New England seasonal classic.  Cinnamon and nutmeg dominate the aroma.  The taste is a rich combination of the holiday spices and the hearty malt backbone.  There is a mild sweetness to the finish along with the lingering flavor of the spices."
  ), 
  Beer.create(  
    name: "Sierra Nevada Otra Vez", 
    abv: 4.5, 
    description: "Otra Vez combines prickly pear cactus with a hint of grapefruit for a refreshing beer that will have you calling for round after round. Otra Vez!"
             ), 
  Beer.create( 
    name: "Bronx Banner Ale", 
    abv: 4.8, 
    description: "Bronx Banner is a Kolsch-inspired ale that is brewed using Belgian pilsner, American wheat malts & classic Bavarian hops. It's brilliantly clear-filtered, soft and perfectly balanced."
  ), 
  Beer.create( 
    name: "Crispin Apple Cider", 
    abv: 5.0, 
    description: "Crispin Original is crisp and refreshing, with fruit-forward green apple flavor and subtle citrus aroma. Gluten free!"
  ), 
  Beer.create( 
    name: "Troegs Mad Elf", 
    abv: 11.0, 
    description: "The holidays at Troegs start with our inner Mad Elf momentarily taking over the brew deck. So blame 'him' for this cheerful ruby red creation reminiscent of ripened cherries, ray honey and cocoa with notes of cinnamon, clove and allspice."
  ), 
  Beer.create( 
    name: "Great Lakes Ohio City Oatmeal Stout", 
    abv: 5.4, 
    description: "Dark and roasty yet light and smooth as a fresh coat of snow, this Oatmeal Stout will kick your cabin fever and inspire you to toss another log on the fire."
  ), 
  Beer.create( 
    name: "Sam Adams Winter Lager", 
    abv: 5.6, 
    description: "German brewers were onto something centuries ago when they created rich bock beers for the winter. Our version is spiced with cinnamon, ginger, and orange peel for a deep flavor and malty finish that will warm you on a cold winter's night."
  ), 
  Beer.create( 
    name: "Lagunitas Stoopid Wit", 
    abv: 6.3, 
    description: "The Bard said that it's better to be a witty fool than a foolish wit. True dat. Wit dat in mind we take you now to the stoopid side of the classic wit on the wings of Yakima's finest. This UNFILTERED Belgian-ish Wit-ly-esque-ish-ness brew features a dry twang of bitterness and is perfect for the summertime drinking!"
  ), 
  Beer.create( 
    name: "Asahi (probably)", 
    abv: 5.0, 
    description: "With its refreshing barley flavor and crisp aftertaste, Asahi Super Dry is by far the most popular high-quality beer in Japan."
  ), 
  Beer.create( 
    name: "Pork Slap!", 
    abv: 4.3, 
    description: "Porkslap Pale Ale is brewed with 2 row North American barley and English crystal malt. The beer is flavored with crystal hop and a touch of fresh ginger to create a distinct flavor only a porkslapper can love. At 4.3% abv this beer is designed to have a good ale flavor and a crisp mild finish." 
  ), 
  [], 
  Beer.create( 
    name: "Great Lakes Christmas Ale", 
    abv: 7.5, 
    description: "Do not open 'til Christmas? Whoever coined that phrase obviously hasn't tasted Christmas Ale's fresh honey, cinnamon, and ginger flavors."
  ), 
  Beer.create( 
    name: "River Horse Belgian Freeze", 
    abv: 8.0, 
    description: "This warming winter Ale is amber in color, malty and full bodied. Belgian yeast provides a variety of delicate characteristics in the nose and on the palate."
  ), 
  [], 
  Beer.find_by(name: "Harpoon Winter Warmer"), 
  []
]

month = "12" 
year = "2016" 


names.each_with_index do |name, index| 
  if name != "" 
    date = "#{year}-#{month}-#{index + 1}"
    user = User.find_or_create_by(:name => name)
    user.event = Event.create(date: date)
    user.beer = beers[index] 
  end
end

#test data: 
month = 11
date = "#{year}-#{month}-28"
test = User.create(:name => "Leah")
test.event = Event.create(date: date)
test.beer = beers[5]


