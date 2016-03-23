class WelcomeController < ApplicationController

	def search
	end

	def random
		@random = Lexicon.find(rand(Lexicon.all.length))
	end
end