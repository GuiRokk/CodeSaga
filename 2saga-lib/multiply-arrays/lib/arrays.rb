class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array.each_with_index.map do |e, i|
      ant  = i==0 ? e : array[i-1]
      prox = i == array.size-1 ? e : array[i+1]
      ant*prox
    end
  end
end