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

  def confirmation
    @order = current_user.orders.last
    @items = current_user.orders.last.items
    authorize @order

    redicon = 'http://maps.google.com/mapfiles/ms/icons/red-dot.png'
    @markers_items = @items.map do |item|
      {
        lat: item.meal.latitude,
        lng: item.meal.longitude,
        icon: redicon

        # infoWindow: {
        #   content: render_to_string(partial: "/shared/info_window", locals: { tour: tour})
        # }

      }
    end
  end

end
