class WelcomeController < ApplicationController

	# def results
	# 	if params[:code] != nil
	# 		@results = Lexicon.includes(code: params[:code])
	# 	elsif params[:description] != nil
	# 		@results = Lexicon.includes(description: params[:description])
	# 	end
	# end


	def results
		@results = []
		Lexicon.all.each do |entry|
			x = entry.code.to_s
			y = entry.description.to_s
			z = x + y
			if z == "" 
				@results = @results
			elsif z.include?(params[:search])
				@results.push(entry)
			end
		end
	end

	def search
	end

	def random
		@random = Lexicon.find(rand(Lexicon.all.length))
	end
end