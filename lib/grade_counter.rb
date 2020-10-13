class Grade_Counter

  def count(grades)
    green_count = 0 
    amber_count = 0 
    red_count = 0 

    grades_array = grades.split(",")
    grades_array.each do |grade|
      if grade == "Green" then green_count += 1 end 
      if grade == "Amber" then amber_count += 1 end
      if grade == 'Red' then red_count += 1 end 
    end 

    if (green_count && amber_count && red_count) > 0 
      return "Green: #{green_count}\n Amber: #{amber_count}\n Red: #{red_count}"
    elsif (green_count && amber_count) > 0
      return "Green: #{green_count}\n Amber: #{amber_count}"
    else 
      return "Green: #{green_count}"
    end

  end 

end 