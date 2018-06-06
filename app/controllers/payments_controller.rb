class PaymentsController < ApplicationController
  before_action :set_item
  def new
  end

  def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @item.amount_cents,
    description:  "Payment for meal #{@item.meal_sku} for item #{@item.id}",
    currency:     @item.amount.currency
  )

  @item.update(payment: charge.to_json, state: 'paid')
  redirect_to item_path(@item)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_item_payment_path(@item)
end

private

  def set_item
    @item = current_user.items.where(state: 'pending').find(params[:item_id])
    authorize @item
  end
end
