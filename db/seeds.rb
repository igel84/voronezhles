#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.all.each do |proj|
	proj.body = proj.body.gsub!("Пиломатериал", "<a href='/price' title='пиломатериал: доска обрезная доска необрезная доска столярная цена в Воронеже'><strong>Пиломатериал</strong></a>") if proj.body && proj.body != ''
	proj.body = proj.body.gsub!("пиломатериал", "<a href='/price' title='пиломатериал: доска обрезная доска необрезная доска столярная цена в Воронеже'><strong>пиломатериал</strong></a>") if proj.body && proj.body != ''
	proj.save
end