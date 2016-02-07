class WelcomeController < ApplicationController
	def results
		if params[:code] != nil
			@results = Lexicon.where(code: params[:code])
		elsif params[:description] != nil
			@results = Lexicon.where(description: params[:description])
		end
	end
end