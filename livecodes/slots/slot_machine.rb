class SlotMachine
  OPTIONS = ['cherry', 'seven', 'bell', 'star','joker']

  def initialize(reels = [])
    @reels = reels
  end

  def score
    # 1. check if all reels are equal
    if all_reels_are_equal?
      # 1.1 calculate score
      base_score(@reels[0]) * 10
    # 2. check if two reels are equal && they are joker
    elsif two_of_the_same_and_joker?
      # 2.1 calculate score
      base_score(@reels.sort[1]) * 5
      # 3. else 
    else
      0
    end
  end

  def play
    @reels = []

    3.times { @reels << OPTIONS.sample  }

    return @reels
  end

  private

  def all_reels_are_equal?
    @reels.uniq.size == 1
  end

  def two_of_the_same_and_joker?
    @reels.uniq.size == 2 && @reels.include?('joker')
  end

  def base_score(symbol)
    # Capital letters in ruby means a CONSTANT
    OPTIONS.index(symbol) + 1
  end
end