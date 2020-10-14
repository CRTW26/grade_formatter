class Grade_Counter

  VALID_GRADES = ['Green', 'Amber', 'Red']

  def initialize
    @green_count = 0
    @amber_count = 0
    @red_count = 0
    @uncounted = 0
  end

  def green_count
    @green_count
  end 

  def count(grades)
    valid_grades = ["Green", "Amber", "Red"]
    grades_array = grades.split(",")
    grades_array.each do |grade|
      if grade == "Green" then @green_count += 1 end 
      if grade == "Amber" then @amber_count += 1 end
      if grade == 'Red' then @red_count += 1 end 
      if !(valid_grades.include?(grade)) then @uncounted += 1 end 

    end 
  end

   def output
      results = ""
      if @green_count > 0 then results.concat("Green: #{@green_count}\n") end
      if @amber_count > 0 then results.concat("Amber: #{@amber_count}\n") end
      if @red_count > 0 then results.concat("Red: #{@red_count}\n") end
      if @uncounted > 0 then results.concat("Uncounted: #{@uncounted}") end
      return results
  end
  
end 