require 'minitest/autorun'
require './order'

orders0 = [{item: "pen", quantity: 12, unit_price:1.00}, {item: "pencil", quantity: 12, unit_price:0.90}]
orders1=[{item:"test",quantity:2, unit_price:2.00}]
orders2=[{item: "test1", quantity:2, unit_price: 2.00}, {item: "test2", quantity:3, unit_price:0.89}]
empty_order = [{item: "pen", quantity: 0, unit_price:1.00}, {item: "pencil", quantity: 0, unit_price:0.90}]


class CalculateTotalTest < MiniTest::Unit::TestCase

  def test_with_order1
    orders=[{item:"test",quantity:2, unit_price:2.00}]
    assert_equal 4.20, calculate_total(orders)
  end
    def test_with_order2
     orders=[{item: "test1", quantity:2, unit_price: 2.00}, {item: "test2", quantity:3, unit_price:0.89}]
     assert_equal 7.00, calculate_total(orders)
  end

  def test_0_quantity
    empty_order = [{item: "pen", quantity: 0, unit_price:1.00}, {item: "pencil", quantity: 0, unit_price:0.90}]
    assert_equal 0, calculate_total(empty_order)
  end
end
