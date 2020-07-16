class PizzariaController < ApplicationController

  def index
    @pizzas = Pizzarium.all
  end

  private

  def set_pizza
    @pizza = Pizzarium.find(params[:id])
  end

  def pizza_params
    params_require(:pizzarium).permit(:name, :price, :descripton, :image)
  end
end
