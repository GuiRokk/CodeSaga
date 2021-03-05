class ArrayUtils
  def self.compara(lista1, lista2)
    lista1-lista2 == [] && lista1.size == lista2.size
  end

  def self.divisiveis(num1,num2)
    a = (1..50).map {|e| e if e%num1 == 0 }.compact
    b = (1..50).map {|e| e if e%num2 == 0 }.compact
    [a&b,a-(a&b),b-(a&b)]
  end 

  def self.soma(array)
    array.sum
  end

  def self.combinar(lista1,lista2)
    lista1.product(lista2)
  end

end


p a = ArrayUtils.divisiveis(3,5)