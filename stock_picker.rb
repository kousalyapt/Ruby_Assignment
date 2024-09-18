def stock_picker(stock_price)
  min = 0
  max_profit = 0
  buy = 0
  sell = 0
  curr = 0
  stock_price.each do |price|
    if stock_price[curr] < stock_price[min]
      min = curr
    end

    if stock_price[curr] - stock_price[min] > max_profit
      max_profit = stock_price[curr] - stock_price[min]
      buy = min
      sell = curr
    end
    curr += 1
  end

  puts "[#{buy}, #{sell}]"
end


stock_price = [17,3,6,9,15,8,6,1,10]
stock_picker(stock_price)