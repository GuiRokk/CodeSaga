class StringUtils
  def wavefy(string)
    resultado =[]
    string.split('').each_with_index do |letra, i|
      if i.even?
        resultado << letra.downcase
      else
        resultado << letra.upcase
      end
    end
    resultado.join('')
  end
end