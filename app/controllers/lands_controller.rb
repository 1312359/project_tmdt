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
    
    def edit
        @land = set_land
    end
    
    def update
        @land = set_land
        if @land.update!(land_params)
            flash[:success] = "Successfully save your land"
        else
            flash[:danger] = "Something go wrong"
        end
        redirect_to land_path(@land)
    end
    
    def bid
        @land = set_land
        if params[:land][:bid_price].to_i > @land.bid_price.to_i
            @land.bid_price = params[:land][:bid_price].to_s
            @land.willwin = current_user.id
            @land.save!
            flash[:success] = "Bid successfully"
        else
            flash[:danger] = "Bid value is blank or smaller than current price"
        end
        redirect_back(fallback_location: root_path)
    end
    
    def show
        @land = set_land
    end
    
    def destroy
        set_land.destroy
        flash[:success] = "Delete done!"
        redirect_back(fallback_location: root_path)
    end
    
private

    def set_land
        Land.find(params[:id])
    end

    def land_params
        params.require(:land).permit(:title, :project_name, :investor, :min_price, :max_price,
                                        :district, :ward, :state_city, :area, :address, :bid_price, {images: []})
    end
end