class PublicController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def push
    ingredients = params[:ingredient]

    @@dishes = Dish.all.to_a

    ingredients.each do |ingredient|
      @@dishes.reverse_each do |dish|
        @@dishes.delete(dish) if dish.ingredients.include?(ingredient)
      end
    end

    redirect_to root_path
  end

  def json_zakaz
    zakaz = []
    i = 0

    @@dishes.each do |dish|
      zakaz << {
        'name' => dish.name,
        'count' => i += 1
      }
    end
    sort_zakaz = zakaz.sort_by { |hash| hash['count'] }.reverse
    render json: sort_zakaz
  end

  private

  def ingr_params
    params.require(:ingredient).permit(:ingredient)
  end
end
