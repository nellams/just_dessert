
class CookieInventory
  attr_reader :quantities
  def initialize
    @quantities = {:peanut_butter  => 0, :chocolate_chip => 0, :sugar => 0}
  end

  def cook_batch!(flavor, quantity)
    @flavor = flavor
    @quantity = quantity
    @quantities[@flavor] += @quantity
  end

  def sell!(flavor, quantity)
    @flavor = flavor
    @quantity = quantity
    if @quantities[@flavor] >= @quantity
      @quantities[@flavor] -= @quantity
    end
      case
      when @quantities[@flavor] == 0
        puts "We've sold out of #{@flavor} cookies!"
      end
      end
end
# a = CookieInventory.new
# a.cook_batch!(:chocolate_chip, 12)
# a.cook_batch!(:sugar, 36)
# puts a.quantities[:sugar]
# a.sell!(:chocolate_chip, 12)
# puts a.quantities
