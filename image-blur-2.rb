# Previous Image class
# By Brian Kay

class Image

  def initialize(arr)
    @pixels_nested_array = arr
  end

  def output_image
    @pixels_nested_array.each do |pixel_array|
      puts "#{pixel_array.join}"
    end
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
