class ItemsController < ApplicationController
def create
    meal = Meal.find(params[:meal_id])
    item = current_user.items.create(
      meal_sku: meal.sku,
      state: 'pending',
      meal: meal,
      amount: meal.price
    )

    redirect_to new_item_payment_path(item)
    authorize item
  end

  def show
    @item = current_user.items.where(state: 'paid').find(params[:id])
    authorize @item
  end

end
