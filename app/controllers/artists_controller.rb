class ArtistsController < ApplicationController



	def index

		@artists=Artist.all

	end


	def show

		@artist=Artist.find(params[:id])
		@album=@artist.albums.all
		


	end


	protected
    def artist_params
      params.require(:artist).permit(:name, :image_url)
end
end
