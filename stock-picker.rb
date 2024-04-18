def stock_picker(array)
    best_days =[]
    highest_profit = 0 
    array.each_with_index do |buy_stock_price, buy_index|
        array.each_with_index do |sell_stock_price, sell_index|
            profit = (0 - buy_stock_price) + sell_stock_price
            if sell_index < buy_index
                next
            else
                if profit > highest_profit
                    highest_profit = profit
                    best_days[0] = buy_index
                    best_days[1] = sell_index
                end
            end
        end
    end
    p best_days

end

stock_picker([17,3,6,9,15,8,6,1,10])
