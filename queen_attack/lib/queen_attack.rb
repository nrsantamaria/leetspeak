class Array
  define_method(:queen_attack?) do |target|
    if self.at(0).eql?(target.at(0))
      true
    elsif self.at(1).eql?(target.at(1))
      true
    elsif (self.at(0).-(target.at(0)).abs.eql?(1)).&((self.at(1).-(target.at(1)).abs.eql?(1)))
      true
    else
      false
    end
  end
end
