class ItemsController < PrivateController
 
  before_action :find_item, :only => [:show, :edit , :update ,:delete , :destroy]
  # GET /items or /items.json
  def index
    @items = Item.all
  end

  # GET /items/1 or /items/1.json
  def show
    render layout: "public"
  end

  # GET /items/new
  def new
    @item = Item.new
    @promo = Promo.all
    @type = Type.all
  end

  # GET /items/1/edit
  def edit
    @promo = Promo.all
    @type = Type.all
  end

  # POST /items or /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def delete
  end

  
  # DELETE /items/1 or /items/1.json
  def destroy
    @item.image.purge
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  

    def find_item
      @item = Item.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :description, :quantity, :unit_value, :image, :type_id, :promo_id )
    end
end
