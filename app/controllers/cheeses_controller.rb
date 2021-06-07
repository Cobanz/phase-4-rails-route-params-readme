class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    #find a cheese using the id from URL
   cheese = Cheese.find_by(id:params[:id])
    # want a json response using the cheese object
    render json: cheese
  end


end
