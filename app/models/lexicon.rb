class Lexicon < ActiveRecord::Base

	def category_name
		if "#{category}" == "html.csv"
			return "HTML"
		elsif "#{category}" == "css.csv"
			return "CSS"
		elsif "#{category}" == "jQuery.csv"
			return "jQuery"
		elsif "#{category}" == 'javascript.csv'
			return "JavaScript"
		elsif "#{category}" == 'git_console.csv'
			return "Console & GitHub Commands"
		else
			return "#{category.chop.chop.chop.chop.capitalize}"
		end

	end
	# cat = "#{category}"

	# case cat
	# 	when "css.csv"
	# 		cat = 'CSS'
	# 	when "html.csv"
	# 		cat = 'HTML'
	# 	when "git_console.csv"
	# 		cat = "Console & Git Commands"
	# 	when 'jQuery.csv'
	# 		cat = 'jQuery'
	# 	else
	# 		cat = "#{cat.chop.chop.chop.chop.capitalize}"
	# end
end
