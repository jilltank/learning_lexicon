class LexiconsController < ApplicationController

	def index
		@lexicons = Lexicon.all
	end

	def show
	end

	def new
		@lexicon = Lexicon.new
	end

	def edit
	end

	def create
		@lexicon = Lexicon.new(lexicon_params)

		respond_to do |format|
			if @lexicon.save
				format.html { redirect_to @lexicon, notice: 'Lexicon was successfully created.'}
				format.json { render :show, status: :created, location: @lexicon }
			else
				format.html { render :new }
				format.json { render json: @lexicon.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@lexicon.destroy
		respond_to do |format|
			format.html { redirect_to lexicons_url, notice: 'lexicon was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		def set_lexicon
			@lexicon = lexicon.find(params[:id])
		end

		def lexicon_params
			params.require(:lexicon).permit(:category, :code, :description, :lexicon_id)
		end
	end