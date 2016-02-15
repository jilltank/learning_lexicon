# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
path = "../lib/assets/lexicon_db"

Dir.foreach(path) do |file|
	if file.include? ('.csv')
		CSV.foreach ("#{path}/#{file}") do |row| 
			case file
			when "html.csv"
				new_cat = "HTML"
			when "css.csv"
				new_cat = "CSS"
			when "git_console.csv"
				new_cat = "Git & Console Commands"
			when "jquery.csv"
				new_cat = "jQuery"
			when "javascript.csv"
				new_cat = "JavaScript"
			else
				foo = file.split(".")
				new_cat = foo[0].capitalize
			end
			Lexicon.find_or_create_by(category:new_cat, code:row[0], description:row[1])
		end
	end
end