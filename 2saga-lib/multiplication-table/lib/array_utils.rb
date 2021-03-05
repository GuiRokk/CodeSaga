class ArrayUtils
  def self.multiplos(qtd, multiplo)
    (1..qtd).map {|e| e*multiplo}
  
  end
  
  def self.tabuada(numero)
    (1..numero).map{|e| self.multiplos(10,e)}
  end
end
