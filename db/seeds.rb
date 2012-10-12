# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Committees
["Mission", "Volunteers", "Materials", "Marketing", "Finance"].sort!.each do |name|
  Committee.create!(:name => name)
end if Committee.all.blank?

["Colleague","Seminar","Facebook", "Can't remember", "Others"].sort!.each do |source|
  Referrer.create!(:source => source)
end if Referrer.all.blank?
