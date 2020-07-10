class PizzariaController < ApplicationController

  private

  def set_pizzaria
    @pizza = Pizzarium.find(params[:id])
  end

  def pizzaria_params
    params_require(:pizzarium).permit(:name, :price, :descripton, :photo)
  end
end
