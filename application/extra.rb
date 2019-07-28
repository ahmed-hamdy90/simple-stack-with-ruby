#!/user/bin/ruby

require_relative "stack"

##
# Extra class represent extension implementation for Stack implementation,
# include method to getting mean value for numbers stored on Stack
class Extra < Stack

  ##
  # Extra class initialization method
  def initialize
    super
    @meanNumber = 0;
  end

  ##
  # Getting mean value(avarage value) for numbers stored on stack
  def mean
    @meanNumber
  end

  protected

  ##
  # Listener event method fire at after push operation done
  def postPushListener
    super
    reCalculateMean
  end

  ##
  # Listener event method fire at after pop operation done
  def postPopListener
    super
    reCalculateMean
  end

  private

  ##
  # ReCalculation for mean value(avarage value) for numbers stored on stack
  def reCalculateMean
    # first reset saved mean number
    @meanNumber = 0;
    # then begin reCalculate process But if stack has numbers
    if @stackList.length > 0
      @totalSumOfStackList = 0;
      @stackList.each do |num|
        @totalSumOfStackList += num
      end
      @meanNumber = @totalSumOfStackList / @stackList.length
    end
  end
end
