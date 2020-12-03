class Leapyear

  def is_leap_year?(year)
    if year % 4 == 0 && year % 100 != 0
      return true
    elsif year % 400 == 0
      return true
    elsif year % 4 != 0
      return false
    elsif year % 100 == 0 && year % 400 != 0
      return false
    end
   end

   def leap_years_between(start_year,end_year)
     leap_years = []
     years_array = (start_year..end_year).to_a

    years_array.each do |i|
      if i % 4 == 0 && i % 100 != 0
       leap_years << i
     elsif i % 400 == 0
       leap_years << i
      end
    end
     return leap_years
   end

   def closest_leap_year(year)
     while true
       year += 1
        if year % 4 == 0 && year % 100 != 0
          return year
          break
        elsif year % 400 == 0
          return year
          break
        end
      end
     end
end
