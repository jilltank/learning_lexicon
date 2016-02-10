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
			x = entry.code
			if x == nil
				@results = @results
			elsif x.include?(params[:code])
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