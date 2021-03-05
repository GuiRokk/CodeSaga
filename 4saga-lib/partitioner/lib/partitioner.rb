class Partitioner
  def subset(array)
    #Utilizando a notação do algorítimo
    #Pseudopolynomial time number partitioning
    #https://tinyurl.com/1c2kicjf
    k = array.reduce{|soma, numero| soma + numero}/2
    n=1
    while n <= array.size
        sorteia = array.combination(n).to_a
        somas = []
        sorteia.each do |elementos|
            somas << elementos.reduce{|soma, numero| soma + numero}
        end
        if somas.include?(k)
            indice = somas.find_index {|item| item == k }
            break
        else
            n+=1
        end
    end
    lado1 = sorteia[indice]
    lado2 = array-lado1
    lado2.reduce{|soma, numero| soma + numero} == k
  end
end
