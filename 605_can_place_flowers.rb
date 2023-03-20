def can_place_flowers(flowerbed, n)
  for i in (0...flowerbed.length)
    if i == 0 and flowerbed[i] == 0
      unless flowerbed[i+1] == 1
        flowerbed[i] = 1
        n -= 1
      end
      next
    end
    if i == flowerbed.length - 1 and flowerbed[i] == 0
      unless flowerbed[i-1] == 1
        flowerbed[i] = 1
        n -= 1
      end
      next
    end
    if flowerbed[i] == 0
      unless flowerbed[i+1] == 1 or flowerbed[i-1] == 1
        flowerbed[i] = 1
        n -= 1
      end
    end
  end
  return n <= 0
end
