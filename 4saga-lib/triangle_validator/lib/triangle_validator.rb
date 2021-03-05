class TriangleValidator
  def validate_list(list)
    comb = list.split(" ").map(&:to_i).combination(3).to_a
    valido= []
    comb.each do |combinacao|
        a = combinacao[0]
        b = combinacao[1]
        c = combinacao[2]
        if a + b > c && a + c > b && b + c > a
            valido << combinacao
        end
    end
    valido.map{|catetos| catetos.inject(:*)}
  end
end

