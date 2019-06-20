# Image class with blur
# By Brian Kay

class Image

  def initialize(arr)
    @pixels = arr
  end

  def output_image
    @pixels.each do |row|
      puts "#{row.join}"
    end
  end

  def blur_image
    coords = []
    @pixels.each_with_index do |x, i|
      x.each_with_index do |y, j|
        if y == 1
          coords << [i,j]
        end
      end
    end

    coords.each do |x|
      row = x[0]
      col = x[1]
      @pixels[row-1][col] = 1 if @pixels[row-1][col]
      @pixels[row][col+1] = 1 if @pixels[row][col+1]
      @pixels[row+1][col] = 1 if @pixels[row+1][col]
      @pixels[row][col-1] = 1 if @pixels[row][col-1]
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts image.inspect

image.output_image



image.blur_image

puts image.inspect

image.output_image
