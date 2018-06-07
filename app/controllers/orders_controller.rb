class OrdersController < ApplicationController

  def show
    @items = current_user.orders.where(status: 0).find(params[:id]).items
    @order = Order.find(params[:id])
    @order.total_price = Money.new(0)
    @items.each do |item|
      @order.total_price += item.item_price
    end
    @order.save
    # @order = current_user.orders.where(status: 0).find(params[:id])
    authorize @items
  end
end
