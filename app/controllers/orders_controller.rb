class OrdersController < ApplicationController
  def index
    @orders = DeliveryOrder.all
    render json: { "orders" => @orders.as_json(only: :order_id, methods: [:delivery_date, :delivery_time]) }.to_json
  end

  def show
    @order = DeliveryOrder.find(params[:id])
    render json: { "order" => @order.as_json(only: :order_id, methods: [:delivery_date, :delivery_time],
      include: {order_items: {
        methods: [:name, :total_price], only: :quantity} })
      }.to_json
  end
end
