class MonstruosController < ApplicationController
  
  before_action :tieneTweets, only: [:show]

  def tieneTweets
    @monstruo = Monstruo.find(params[:id])
    if @monstruo.tweets.count == 0
      redirect_to monstruos_path, notice:'Este monstruo no tiene tweets para mostrar'
    end
  end
  
  def index
  end

  def show
  	@monstruo = Monstruo.find(params[:id])
  end

  def edit    
  end
  
  def destroy
  	m = Monstruo.find(params[:id])
  	m.destroy
    redirect_to monstruos_path
  end
end
