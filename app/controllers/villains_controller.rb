class VillainsController < ApplicationController
    def index
        render json: Villain.all
    end
    
    def show
        render json: Villain.find(params[:id])
    end
    
    def create
        villain = Villain.create(villain_params)
        
        render json: villain
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def villain_params
        params.require(:villain).permit(:name, :idle_image,:moving_left_image, :moving_right_image, :hit_image, :death_image, :health, :damage)
    end
end
