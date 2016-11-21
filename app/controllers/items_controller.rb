class ItemsController < ApplicationController
  before_action :set_user
  before_action :set_item, except: [:index]

  def index
        @items = @user.published_items.includes(:user).page(params[:page]).order(published_at: :desc)
  end

  def show
  end

  def new
  end


  private

    def set_user
      @user = User.find_by(params[:user_id])
    end

    def set_item
      @item = Item.find(params[:id])
    end
end