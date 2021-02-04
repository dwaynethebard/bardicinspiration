class StoreController < PublicController
  
    def index
      # Grab newest three items
      #@newest = Item.order(created_at: :asc).limit(7)
      # Grab all promo items
      #@promo=Item.where.not(promo: nil)
      # List the categories
  
  
  
    end
  
    def show
      #@pagy, @items = pagy(Item.where("type_id = ?", params[:id]))
  
    end
    
  end
  