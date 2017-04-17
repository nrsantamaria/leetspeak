require("rspec")
require("queen_attack")

describe("Array#queen_attack?") do
  it("is false if the coordinates are not horizontally, vertically, or diagonally in line with each other") do
    expect([1, 1].queen_attack?([2, 3])).to(eq(false))
  end
  it("is true if the coordinates x-values are equal") do
    expect([1, 1].queen_attack?([1, 3])).to(eq(true))
  end
  it("is true if the coordinates y-values are equal") do
    expect([1, 3].queen_attack?([2, 3]))
  end
  it("they are diagonal when the difference between the x and y values produces an absolute value of 1") do
    expect([5, 1].queen_attack?([1, 5]))
  end
end
