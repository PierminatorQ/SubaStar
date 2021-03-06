require 'test_helper'

class AuctionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auction = auctions(:one)
  end

  test "should get index" do
    get auctions_url
    assert_response :success
  end

  test "should get new" do
    get new_auction_url
    assert_response :success
  end

  test "should create auction" do
    assert_difference('Auction.count') do
      post auctions_url, params: { auction: { description: @auction.description, end_date: @auction.end_date, initial_price: @auction.initial_price, product_id: @auction.product_id, start_date: @auction.start_date, status: @auction.status, title: @auction.title, user_id: @auction.user_id } }
    end

    assert_redirected_to auction_url(Auction.last)
  end

  test "should show auction" do
    get auction_url(@auction)
    assert_response :success
  end

  test "should get edit" do
    get edit_auction_url(@auction)
    assert_response :success
  end

  test "should update auction" do
    patch auction_url(@auction), params: { auction: { description: @auction.description, end_date: @auction.end_date, initial_price: @auction.initial_price, product_id: @auction.product_id, start_date: @auction.start_date, status: @auction.status, title: @auction.title, user_id: @auction.user_id } }
    assert_redirected_to auction_url(@auction)
  end

  test "should destroy auction" do
    assert_difference('Auction.count', -1) do
      delete auction_url(@auction)
    end

    assert_redirected_to auctions_url
  end
end
