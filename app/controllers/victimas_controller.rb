class VictimasController < ApplicationController
  def index
  	@victimas = Victima.all.order(created_at: :desc)
  end
end
