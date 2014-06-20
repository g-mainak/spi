# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lectures = ["Leadership in Global Health",
  "",
  "",
"Climate Change in Public Mind",
"Sustainable Design",
"Energy Tech Future",
"Air Pollution And Public Health",
"Violent Conflict and Health",
"Science Policy",
"Public Health and National Security"]

(Date.today..(Date.today+9.days)).each_with_index do |d, i|
  Day.create(day: d, lecture: lectures[i])
end

Day.find(2).delete
Day.find(3).delete