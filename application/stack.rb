#!/user/bin/ruby

##
# Stack class represent stack programming consept implementation on ruby,
# iclude push, pop methods for stack implementation
# plus method to getting maximum number stored on this Stack.
# <br/>
# Notice: Stack apply FILO (first enter, last out) methodology
class Stack

  ##
  # Stack class initialization method
  def initialize
    @stackList = Array.new
    @maxNumber = 0
  end

  ##
  # Push method implementation for stack
  # num - number value which will be push onto
  def push (num)
    prePushListener
    @stackList.append num
    postPushListener
  end

  ##
  # Pop method implementation for stack
  def pop
    @stackList.delete_at (@stackList.length - 1)
    postPopListener
  end

  ##
  # Getting maximum number stored on stack
  def max
    @maxNumber
  end

  protected

  ##
  # Listener event method fire at before push operation done
  def prePushListener
  end

  ##
  # Listener event method fire at after push operation done
  def postPushListener
    reCalculateMax
  end

  ##
  # Listener event method fire at before pop operation done
  def prePopListener
  end

  ##
  # Listener event method fire at after pop operation done
  def postPopListener
    reCalculateMax
  end

  private

  ##
  # ReCalculation for maximum number stored on stack
  def reCalculateMax
    # first reset saved maximum number
    @maxNumber = 0;
    # then begin reCalculate process But if stack has numbers
    if @stackList.length > 0
      @stackList.each do |num|
        if @maxNumber < num
          @maxNumber = num
        end
      end
    end
  end
end
