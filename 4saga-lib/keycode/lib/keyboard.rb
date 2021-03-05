class Keyboard
  def movimenta(direcao,posicao,elemento,keypad)
    lim_linha = keypad.size-1  # numero de linhas
    lim_coluna = keypad[0].size-1 #numero de colunas
    case elemento
      when "linha"
        i = posicao[0]
        movimento = i + direcao
        if !(movimento > lim_linha || movimento < 0)
          movimento
        else
          i
        end
      when "coluna"
        j = posicao[1]
        movimento = j + direcao
        if !(movimento > lim_coluna || movimento < 0)
          movimento
        else
          j
        end
    end
  end

  def keycode(instructions, keypad)
    posicao=[1,1]
    senha = []
    instructions = instructions.split(" ")
    instructions.each do |lista_comandos|
      lista_comandos.split("").each_with_index do |comando, i|
        case lista_comandos[i]
          when "C"
            direcao = -1
            posicao[0] = movimenta(direcao,posicao,"linha",keypad)  
          when "B"  
            direcao = 1
            posicao[0] = movimenta(direcao,posicao,"linha",keypad)   
          when "E"
            direcao = -1
            posicao[1] = movimenta(direcao,posicao,"coluna",keypad)  
          when "D"
            direcao = 1
            posicao[1] = movimenta(direcao,posicao,"coluna",keypad)   
        end
      end
      senha << keypad[posicao[0]][posicao[1]]
    end
    senha.join("")
  end  
end