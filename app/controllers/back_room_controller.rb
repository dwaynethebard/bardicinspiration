class BackRoomController < PrivateController
  def index
    @item = Item.count
  end
end
