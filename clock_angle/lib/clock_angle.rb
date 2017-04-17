class String
  define_method(:clock_angle) do
    hour_angles = {
      "1" => 30,
      "2" => 60,
      "3" => 90,
      "4" => 120,
      "5" => 150,
      "6" => 180,
      "7" => 210,
      "8" => 240,
      "9" => 270,
      "10" => 300,
      "11" => 330,
      "12" => 360
    }
    minute_angles = {
      "00" => 0,
      "05" => 30,
      "10" => 60,
      "15" => 90,
      "20" => 120,
      "25" => 150,
      "30" => 180,
      "35" => 210,
      "40" => 240,
      "45" => 270,
      "50" => 300,
      "55" => 330,
      "60" => 360
    }

    digits = self.split(":")
    hour_angle = 0
    minute_angle = 0
    angle_difference = 0
    hour_angles.each do |key, value|
      if digits.at(0).eql?(key)
        hour_angle = value
      end
    end

    minute_angles.each do |key, value|
      if digits.at(1).eql?(key)
        minute_angle = value
      end
    end

    if((hour_angle.-(minute_angle)).abs.>=(180))
      angle_difference = 360.-((hour_angle.-(minute_angle)).abs)
      puts(angle_difference)
    else
      angle_difference = hour_angle.-(minute_angle).abs
      puts(angle_difference)
    end
    angle_difference
  end
end
