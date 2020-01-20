class ArtistsController < ApplicationController

    def show 
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end


    def edit 
        @artist = Artist.find(params[:id])
    end

    def create 
        @artist = Artist.create(artists_params)
        redirect_to @artist
    end

    def update 
        @artist = Artist.find(params[:id])
        @artist.update(artists_params)
        redirect_to @artist
    end

    private 

    def artists_params
      params.require(:artist).permit(:name, :bio)   
    end
    
end
