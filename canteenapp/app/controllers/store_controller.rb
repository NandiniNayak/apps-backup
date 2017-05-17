class StoreController < ApplicationController
  def index
    @menus = Menu.order(:category)
  end
end
