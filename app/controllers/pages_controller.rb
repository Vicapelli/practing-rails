class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @pizzas_random = Pizzarium.all.sample(4)
    @pizzas = Pizzarium.new
    @home_page = true
  end
end
