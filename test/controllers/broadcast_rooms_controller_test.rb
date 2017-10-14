require 'test_helper'

class BroadcastRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broadcast_room = broadcast_rooms(:one)
  end

  test "should get index" do
    get broadcast_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_broadcast_room_url
    assert_response :success
  end

  test "should create broadcast_room" do
    assert_difference('BroadcastRoom.count') do
      post broadcast_rooms_url, params: { broadcast_room: { event_id: @broadcast_room.event_id, title: @broadcast_room.title } }
    end

    assert_redirected_to broadcast_room_url(BroadcastRoom.last)
  end

  test "should show broadcast_room" do
    get broadcast_room_url(@broadcast_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_broadcast_room_url(@broadcast_room)
    assert_response :success
  end

  test "should update broadcast_room" do
    patch broadcast_room_url(@broadcast_room), params: { broadcast_room: { event_id: @broadcast_room.event_id, title: @broadcast_room.title } }
    assert_redirected_to broadcast_room_url(@broadcast_room)
  end

  test "should destroy broadcast_room" do
    assert_difference('BroadcastRoom.count', -1) do
      delete broadcast_room_url(@broadcast_room)
    end

    assert_redirected_to broadcast_rooms_url
  end
end
