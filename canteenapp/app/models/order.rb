class Order < ApplicationRecord
  belongs_to :menu

  def total_price
    # price = @order.menu.price.to_f
    # quantity = @order.quantity
    # @total_price = quantity * price
    # return @total_price
    # puts @total_price
    (menu.price.to_f)*quantity
  end
end
