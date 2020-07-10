class PizzariaController < ApplicationController

  private

  def set_pizza
    @pizza = Pizzarium.find(params[:id])
  end

  def pizza_params
    params_require(:pizzarium).permit(:name, :price, :descripton, :photo)
  end
end
