require "test_helper"

class BasketsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def new
   @basket = Basket.new
  end

  def create
  end

end
