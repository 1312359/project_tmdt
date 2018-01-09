class LandsController < ApplicationController
    def index
        @lands = Land.all
    end
  
    def new
        @land = Land.new
    end
    
    def create
        @land = Land.new (land_params)
        @land.user = current_user
        if @land.save!
            flash[:success] = "Successfully added your land"
        else
            flash[:danger] = "Something go wrong"
        end
        redirect_back(fallback_location: root_path)
    end
    
    def show
        @land = set_land
    end
    
    def destroy
        
    end
    
private

    def set_land
        Land.find(params[:id])
    end

    def land_params
        params.require(:land).permit(:title, :project_name, :investor, :min_price, :max_price,
                                        :district, :ward, :city, :state, :area, :address, {images: []})
    end
end