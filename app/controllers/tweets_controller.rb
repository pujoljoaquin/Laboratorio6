# encoding = utf-8
class TweetsController < ApplicationController
  
  def new
    @tweet = Tweet.new
  end

  def create
  	@tweet = Tweet.create(params.require(:tweet).permit(:monstruo_id,:estado))
    redirect_to @tweet
  end

  def default    
  end
  
  def index
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  # -----------------
  # CREATE
  # El método create recibe params = { tweet: { monstruo_id: valor, estado: valor } }
end
