class Arrays
  def inverse_strings(array)
    comp = array.map{|e| e.reverse}
    array-comp
  end
end

