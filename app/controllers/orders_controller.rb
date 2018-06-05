class OrdersController < ApplicationController
def create
    meal = Meal.find(params[:meal_id])
    order = current_user.orders.create(
      meal_sku: meal.sku,
      state: 'pending',
      meal: meal,
      amount: meal.price
    )

    redirect_to new_order_payment_path(order)
    authorize order
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

end
