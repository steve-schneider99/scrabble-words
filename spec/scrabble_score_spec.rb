require 'rspec'
require 'scrabble_score'
require 'pry'

describe('String#scrabble') do
  it("returs a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
end

describe('String#scrabble') do
  it("returs a scrabble score for all letters") do
    expect("abcd".scrabble()).to(eq(9))
  end
end

describe('String#scrabble') do
  it("returns higher point value for letters with higher point value.") do
    expect("abcdefg".scrabble()).to(eq(16))
  end
end
