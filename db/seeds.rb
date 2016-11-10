# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

names = ["Bridget", "TBD", "Michelle", "TDB", "Wes", "Roo", "Sherry", "TBD", "Brianna", "Emily W", "Pat", "Dagney", "Nicholas", "Elena", "Kyla", "Leah", "Rachel", "TBD", "Alex","TBD", "TDB", "Big Cat", "Clara Nice", "Kristin"]

month = "12" 
year = "2016" 

names.each_with_index do |name, index| 
  date = "#{year}-#{month}-#{index}"
  User.create(:name => name).events.create(:date => date)
end
