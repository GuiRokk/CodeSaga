class Numbers
  def sum_text(numbers_text)
    lista = numbers_text.split("\n").map(&:to_i)
    lista.inject(0, :+)
  end
end
