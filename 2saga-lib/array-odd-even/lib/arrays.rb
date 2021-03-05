class Arrays
  def self.converte_impares_por(lista, numero)
    impares = lista.select(&:odd?)
    multiplo = impares.map{|e| e*numero}
    res=[impares,multiplo]
end
def self.converte_pares_por(lista, numero)
    pares = lista.select(&:even?)
    multiplo = pares.map{|e| e*numero}
    res=[pares,multiplo]
end
end
