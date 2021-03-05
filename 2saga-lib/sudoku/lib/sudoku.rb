class Sudoku
  def check(list)
    controle = [1,2,3,4,5,6,7,8,9]
    
    if (list.find { |numero| list.count(numero) > 1 } == nil) && ((controle - list).empty? == true)
      true
    else
      false
    end
  end
end
