class Grade_Counter

  def count(grades)
    green_count = 0 
    amber_count = 0 
    grades_array = grades.split(",")
    grades_array.each do |grade|
      if grade == "Green"
        green_count += 1
      elsif grade == "Amber"
        amber_count += 1
      end 
    end 
    if (green_count && amber_count) > 0 
      return "Green: #{green_count}\n Amber: #{amber_count}"
    else 
      return "Green: #{green_count}"
    end 
  end 

end 