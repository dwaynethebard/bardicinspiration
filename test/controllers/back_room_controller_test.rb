require 'test_helper'

class BackRoomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get back_room_index_url
    assert_response :success
  end

end
