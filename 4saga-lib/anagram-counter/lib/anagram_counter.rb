class AnagramCounter
  def count(list)
    anagramas = list.split(" ").group_by {|palavra| palavra.chars.sort}
    resultado = 0
    anagramas.each_value do |elemento|
      if elemento.size > 1 
        resultado = elemento.size
      end
    end
    resultado
  end
end
