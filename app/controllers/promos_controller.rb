class PromosController < PrivateController
  before_action :find_promo, :only => [:show, :edit , :update ,:delete , :destroy]

  # GET /promos or /promos.json
  def index
    @promos = Promo.all
  end

  # GET /promos/1 or /promos/1.json
  def show
  end
  def delete
  end
  # GET /promos/new
  def new
    @promo = Promo.new
  end

  # GET /promos/1/edit
  def edit
  end

  # POST /promos or /promos.json
  def create
    @promo = Promo.new(promo_params)

    respond_to do |format|
      if @promo.save
        format.html { redirect_to @promo, notice: "Promo was successfully created." }
        format.json { render :show, status: :created, location: @promo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promos/1 or /promos/1.json
  def update
    respond_to do |format|
      if @promo.update(promo_params)
        format.html { redirect_to @promo, notice: "Promo was successfully updated." }
        format.json { render :show, status: :ok, location: @promo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promos/1 or /promos/1.json
  def destroy
    @promo.destroy
    respond_to do |format|
      format.html { redirect_to promos_url, notice: "Promo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  
    def find_promo
      @promo = Promo.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def promo_params
      params.require(:promo).permit(:name, :discount )
    end
end
