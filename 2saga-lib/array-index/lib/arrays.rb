class Arrays
  def self.multiplica_indices(array)
    b=[]
    array.each_with_index do |n, i|
      b<< n*i
   end
   b
  end
end
