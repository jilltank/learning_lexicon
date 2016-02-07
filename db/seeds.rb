# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
path = "/users/jilli/desktop/lexicon_db"

Dir.foreach(path) do |file|
	if file.include? ('.csv')
		CSV.foreach ("#{path}/#{file}") do |row| 
			Lexicon.create(category:file, code:row[0], description:row[1])
		end
	end
end