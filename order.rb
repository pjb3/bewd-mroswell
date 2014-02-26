TAX_RATE = 0.05
orders0 = [{item: "pen", quantity: 12, unit_price:1.00}, {item: "pencil", quantity: 12, unit_price:0.90}]
orders1=[{item:"test",quantity:2, unit_price:2.00}]
orders2=[{item: "test1", quantity:2, unit_price: 2.00}, {item: "test2", quantity:3, unit_price:0.89}]
empty_order = [{item: "pen", quantity: 0, unit_price:1.00}, {item: "pencil", quantity: 0, unit_price:0.90}]

def calculate_total(orders)
  total = 0
  for order in orders
     total += order[:quantity] * order[:unit_price]
  end
  total+= total* TAX_RATE
  total.round(2)
end
#puts calculate_total(orders1)
puts "$%.2f" % calculate_total(empty_order)
puts "$%.2f" % calculate_total(orders1)
puts "$%.2f" % calculate_total(orders2)
