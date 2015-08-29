class ItemsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  def new
    if params[:q]
      response = Amazon::Ecs.item_search(params[:q] , 
                                  :search_index => 'All' , 
                                  :response_group => 'Medium' , 
                                  :country => 'jp')
      @amazon_items = response.items
    end
  end

  def show
     @item = Item.find(params[:id])
     @haved = @item.have_users
     @wanted = @item.want_users
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end


# def following
#     @title = "Following"
#     @user = User.find(params[:id])
#     @users = @user.followed_users.order(:name).page params[:page]
#     render 'show_follow'
#   end