class LandsController < ApplicationController
    def index
        @lands = Land.all
    end
  
    def new
        
    end
    
    def create
        
    end
    
    def destroy
        
    end
    
private

    def land_params
        params.require(:land).permit(:Title)
    end
    
end