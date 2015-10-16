class MonstruosController < ApplicationController
  
  before_action :get_monstruo, only:[:show, :destroy]
  before_filter :validar_monstruo, only:[:show]

  def get_monstruo
  	@monstruo = Monstruo.find(params[:id])
  end

  def validar_monstruo
    if @monstruo.tweets.size == 0
      redirect_to monstruos_path, notice: 'Error: El monstruo no tiene tweets.'
    end
  end

  def index
  end

  def show
  	@tweets = @monstruo.tweets.order(created_at: :desc)
  end

  def edit    
  end
  
  def destroy
  	@monstruo.destroy
  	redirect_to monstruos_path
  end
end
