class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def results
		@results = []
		Lexicon.all.each do |entry|
			x = entry.code.to_s.downcase
			y = entry.description.to_s.downcase
			z = x + y
			if z == "" 
				@results = @results
			elsif z.include?(params[:search.downcase])
				@results.push(entry)
			end
		end
	end

end
