class Drone
  def manhattan_distance(instructions)
    instructions = instructions.split("\n")
    comandos =[]
    instructions.each do |instrucao|
      comandos << instrucao.match(/(?<direcao>[N,S,L,O])(?<valor>\d+)/)
    end
    pos_drone=[0,0]
    comandos.each_with_index do |comando, i|
      case comandos[i]["direcao"]
      when "N"
        pos_drone[1] += comandos[i]["valor"].to_i
      when "S"
        pos_drone[1] -= comandos[i]["valor"].to_i
      when "L"
        pos_drone[0] += comandos[i]["valor"].to_i
      when "O"
        pos_drone[0] -= comandos[i]["valor"].to_i
      end
    end
    dist_manhattan = (0-pos_drone[0]).abs + (0-pos_drone[1]).abs
  end
end