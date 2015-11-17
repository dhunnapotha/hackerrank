# https://www.hackerrank.com/challenges/coin-change

def noOfPossibleWays(amount, coins, coin_indx, times)

  coin = coins[coin_indx]

  return 1 if coin * times == amount
  return 0 if coin * times > amount
  return 0 if coin_indx == 0

  amount -= coin * times

  ways = 0
  for i in 0..(amount/coins[coin_indx - 1])
    ways = noOfPossibleWays(amount, coins, coin_indx, i)
    total_ways += ways
  end
  return total_ways
end

def computePossibilities(amount, coins)
  coins.sort!{|x, y| y <=> x}
end

@waysHash = {}
def getHashKey(amount, indx)
  [amount, indx]
end

def computePossibilitiesV2(amount, coins, indx)
  return 0 if ((indx < 0) || (amount <= 0) || (coins.size == 0))
  coin = coins[indx]
  ways = 0

  key = getHashKey(amount, indx)
  return @waysHash[key] if @waysHash.has_key?(key)
  for i in 0..amount/coin
    rem = amount - (i * coin)
    if rem.zero?
      ways += 1
    else
      ways += computePossibilitiesV2(rem, coins, indx-1)
    end
  end

  @waysHash[key] = ways
  return ways
end


coins = gets.chomp.split(' ').map{|e| e.to_i}
amount = gets.chomp.to_i
answer = computePossibilitiesV2(amount, coins, coins.size-1)
puts answer



  # key = getHashKey(amount, coin_indx, times)
  # return @waysHash[key] if @waysHash.has_key?(key)


  #   key = [amount, coin_indx, times]
  #   @waysHash[key] = ways



