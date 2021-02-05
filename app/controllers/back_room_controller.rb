class BackRoomController < PrivateController
  def index
    @item = Item.count
    @type = Type.count
    @promo = Promo.count
  end
end
