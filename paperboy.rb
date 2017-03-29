# Each paperboy should have several attributes:
#
# Name
# Experience (the number of papers they've delivered)
# Earnings (amount of money they've earned)
# This needs to be read-only!

#

#
# Each paperboy should have at least these methods:
#



# This method should return a string about the paperboy's performance
# e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"


class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @house_num = 0
    @minimum = 50
    @rate_per_paper = 0.25
    @rate_per_paper2 = 0.50
    @penlty = 2.00
    @quota = 0
    @deliver = 0

  end



  def quota
    @quota = @minimum + @experience/2
  #   100 =  50       +      100/2
  #   150 =  50       +      200/2
  end

  def deliver(start_address, end_address)
    @experience = (end_address - start_address).to_i.abs
    if @experience >= quota
      return @deliver = (quota * @rate_per_paper) + @rate_per_paper2 * ( @experience - quota)
#              100  *    0.25          +       0.5       *      100     - 100
    else
      return @deliver = @experience * @rate_per_paper - 2
    end

  end

# e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"
  def report

    "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@deliver} so far"

  end

end
