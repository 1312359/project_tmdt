class LandsController < ApplicationController
    def index
        @lands = Land.all
    end
  
    def new
        @land = Land.new
    end
    
    def create
        @land = Land.new (land_params)
        if @land.save!
            flash[:success] = "Successfully added your land"
        else
            flash[:danger] = "Something go wrong"
        end
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        
    end
    
private

    def land_params
        params.require(:land).permit(:title, {images: []})
    end
end