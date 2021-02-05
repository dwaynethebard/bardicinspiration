class StoreFrontController < PublicController
  def index
     # Grab newest three items
     @newest = Item.order(created_at: :asc).limit(7)
  end

  def show
  end
end
