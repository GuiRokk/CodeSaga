class Chars
  def unique_quantity(text)
    text.split(" ").map {|e| e.chars.uniq.count}.sum 
  end
end