class ItemsController < ApplicationController

 
  before_action :check_user , :only =>[:delete,:edit,:update]
  before_action :find_item, :only => [:show, :edit , :update ,:delete , :destroy]
  after_action :flash_message

  
  def index
  #  @pagy, @item = pagy(Items.sorted)
  end

  def show
    render layout: "public"
  end
 
  def new
    @items = Items.new
    @promo = Promo.all
    @type = Type.all
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
  
    if @item.save    
      redirect_to(items_path)
    else
      render('new')
    end
  end
  

  def edit
    @promo = Promo.all
    @type = Type.all
  end 

  def update
    @promo = Promo.all
    @type = Type.all
      if @item.update_attributes(item_params)
        redirect_to(items_path)
      else
        render('edit')
      end
  end
  

  def delete
  end

  def destroy
    if @item.destroy
      redirect_to(items_path)
    else
      render("new")
    end
  end
  


  private

  def item_params
    params.require(:item).permit(:name, :description, :quantity, :unit_value, :type_id, :user_id, :promo_id,:picture )
  end

  def check_user
    @item = Item.find(params[:id])
    unless @item.user_id == current_user.id || current_user.role == "super"
      flash[:error] = 'This is not your item to touch'
      redirect_to(items_path)
    end
  end

  def find_item
    @item = Item.find(params[:id])
  end

  def flash_message
    flash[:notice] = "Object was successfully updated"
  end
  def fail_flash
    flash.now[:error] = @item.errors.full_messages
  end

end
