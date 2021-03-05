class Assembly
  def compile(instructions)
    instructions = instructions.split("\n")
    comandos =[]
    instructions.each do |instrucao|
      instrucao = instrucao.tr(" x,","")
      instrucao = instrucao.tr(" l","")
      comandos << instrucao.match(/(?<comando>\w{3})(?<valor>-?\d+)/)
    end
    n=0
    x=0
    while n <= comandos.size-1
      case comandos[n]["comando"]
        when "add"
          x += comandos[n]["valor"].to_i
          n += 1
        when "sub"
          x -= comandos[n]["valor"].to_i
          n+=1
        when "mov"
          x = comandos[n]["valor"].to_i
          n+=1
        when "jmp"
          n = comandos[n]["valor"].to_i-1
      end
    end
    x
  end
end


