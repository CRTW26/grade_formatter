class Grade_Counter

  def count(grades)
    green_count = 0 
    grades_array = grades.split(",")
    grades_array.each do |grade|
      if grade == "Green"
        green_count += 1
      end 
    end 
    return "Green: #{green_count}"
  end 

end 