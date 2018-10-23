class HerosController < ApplicationController
    def index
        render json: Hero.all
    end
    
    def show
        render json: Hero.find(params[:id])
    end
    
    def create
        hero = Hero.create(hero_params)
        
        render json: hero
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def hero_params
        params.require(:hero).permit(:name, :idle_image,:moving_left_image, :moving_right_image, :hit_image, :death_image, :health, :damage)
    end
end
