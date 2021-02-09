class StoreFrontController < PublicController
  def index
     # Grab newest three items
     @newest = Item.order(created_at: :asc).limit(7)
     @types = Type.all
  end

  def show
    @items =Item.where("type_id = 5")

  end
end
