class PoemsController < ApplicationController
    
 def index
   @poems = Poem.all
   render json: @poems
 end
 
 def show
   # binding.pry
   @poem =Poem.find(params[:id])
   render json: @poem
 end

  private
   def poems_params
       params.require(:poem).permit(:title, :content)
   end
end
