class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

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

end
