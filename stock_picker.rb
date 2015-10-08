# USE
# Give the stock_picker method an array of closing stock prices (e.g. [12.24, 13.00, 12.59, 15.00, 11.30])
# This program will return the day which you should buy and which you should sell for most profit
def stock_picker daily_prices_array
  best_buy_day = 0
  best_sell_day = 0
  best_profit = 0
  for buy_day in 0...daily_prices_array.length
    for sell_day in buy_day...daily_prices_array.length
      if daily_prices_array[sell_day] - daily_prices_array[buy_day] > best_profit
        best_profit = daily_prices_array[sell_day] - daily_prices_array[buy_day]
        best_sell_day = sell_day
        best_buy_day = buy_day
      end
    end
  end
  [best_buy_day, best_sell_day]
end