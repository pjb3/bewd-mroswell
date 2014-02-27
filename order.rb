TAX_RATE = 0.05

def calculate_total(orders)
  total = 0
  for order in orders
     total += order[:quantity] * order[:unit_price]
  end
  total+= total* TAX_RATE
  "$%.2f" % total.round(2)
end


