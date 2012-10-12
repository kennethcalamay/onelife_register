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
end if Committee.first.blank?

["Colleague","Seminar","Facebook", "Can't remember", "Others"].sort!.each do |source|
  Referrer.create!(:source => source)
end if Referrer.first.blank?

["Singing", "Dancing", "Hosting", "Programming", "Design/Web", "Design/Print", "Design/Creatives", "Interior design", "Layouting", "Proofreading", "Public speaking", "Managing", "Playing instrument/s", "Organizing", "Handcrafting", "Photoshop"].sort!.each do |skill|
  Talent.create!(:name => skill)
end if Talent.first.blank?
