require("rspec")
require("clock_angle")

describe("String#clock_angle") do
  it("calculates the angle of the first digit in the array") do
    expect(("6:00").clock_angle()).to(eq(180))
  end
  it("calculates the angle of the second digit in the array") do
    expect(("6:25").clock_angle()).to(eq(150))
  end
end
