class BandsController < ApplicationController

    def index
        render :index
    end

    def new

    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def band_params
        params.require(:band).permit(:name)
    end
end
