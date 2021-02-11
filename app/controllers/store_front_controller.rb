class StoreFrontController < PublicController
  def index
     # Grab newest three items
     @newest = Item.order(created_at: :asc).limit(12)
     @types = Type.all
  end

  def show
    @items =Item.where("type_id = ?",params[:id])

  end
end
