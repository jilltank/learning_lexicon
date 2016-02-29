namespace :database do
	desc "TODO"
	task my_task1: :environment do
		Lexicon.all.each do  |entry|
			if !entry.blank?
				case entry.category
				when nil
					next
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
					foo = entry.category.split(".")
					new_cat = foo[0].capitalize
				end
				entry.update(category: new_cat)
			end
		end
	end
end
