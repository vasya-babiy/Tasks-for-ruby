class MyArray
  def initialize
    @array = Array.new(4) { Array.new(4) } 
    @array.each { |max| max.map! { |el| el = rand(-10..10) } }
  end

  def calculate
    sum = 0
    @array.each do |first|
      first.each do |second|
        sum += second if second < 0
        puts second
      end
    end

    puts "\nsum = #{sum}"
  end
end

array = MyArray.new
puts array.calculate
