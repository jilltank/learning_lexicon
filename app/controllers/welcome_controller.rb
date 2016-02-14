class WelcomeController < ApplicationController

	# def results
	# 	if params[:code] != nil
	# 		@results = Lexicon.includes(code: params[:code])
	# 	elsif params[:description] != nil
	# 		@results = Lexicon.includes(description: params[:description])
	# 	end
	# end

	def search
	end

	def random
		@random = Lexicon.find(rand(Lexicon.all.length))
	end
end