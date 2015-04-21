class String

  define_method(:scrabble) do

    # score_ones = 0
    score = 0

    ten_point = ["q", "z"]
    eight_point = ["j", "x"]
    five_point = ["k"]
    four_point = ["f", "h", "v", "w", "y"]
    three_point = ["b", "c", "m", "p"]
    two_point = ["d", "g"]

    letters = self.split("")

    letters.each do |l|
      if two_point.include?(l)
        score += 2
      elsif three_point.include?(l)
        score += 3
      elsif four_point.include?(l)
        score += 4
      elsif five_point.include?(l)
        score += 5
      elsif eight_point.include?(l)
        score += 8
      elsif ten_point.include?(l)
        score += 10  
      else
        score += 1
      end
    end

    score
  end
end
