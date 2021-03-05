class MisteryNumber
  def calculate(operation)
    opr = operation.gsub(/\?/, "x").split('=')
    x = 0
    while (eval opr[0].gsub("x", "#{x}")) != (eval opr[1])
        x+=1
    end
    x
  end
end