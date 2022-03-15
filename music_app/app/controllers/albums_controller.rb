class AlbumsController < ApplicationController

    def new
        render :new
    end

    def create
        @album = Album.new(album_params)

        if @album.save
            redirect_to album_url(@album)
        else
            flash.now[:errors] = ["Invalid entries"]
            redirect_to new_band_album
        end
    end

    def edit
        @album = Album.find(params[:id])
        render :edit
    end

    def update
        @album =Album.find(params[:id])

        if @album.update(album_params)
            redirect_to album_url(@album)
        else
            flash.now[:errors] = ["Invalid edits"]
            redirect_to edit_album_url(@album)
        end
    end

    def show
        @album = Album.find(params[:id])
        render :show
    end

    private

    def album_params
        params.require(:album).permit(:title, :year, :band_id, :live)
    end

end
