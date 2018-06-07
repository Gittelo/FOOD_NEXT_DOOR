class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )


    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.total_price_cents,
      description:  "Payment for order #{@order.id}",
      currency:     @order.total_price.currency
    )

    @order.update(payment: charge.to_json, status: :paid)
    redirect_to confirmation_path

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to confirmation_path

  end

  private

  def set_order
    @order = current_user.orders.pending.find(params[:order_id])
    authorize @order
  end
end
