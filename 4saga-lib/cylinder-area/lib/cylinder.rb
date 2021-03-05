class Cylinder
  def calcula(dados)
    pi = 3
    r = dados[0]
    h = dados[1]
    area = 2*pi*r*(h+r)
  end  

  def calculate_area(cylinder)
    dados = cylinder.split("x").map(&:to_i)
    calcula(dados)
  end
  
  def find_cylinders(list, area)
    resultado = []
    dados =[]
    list.each do |cilindro|
      dados << cilindro.split("x").map(&:to_i)
    end
    compara_area = dados.map{|cil| calcula(cil) >= area}
    compara_area.each_with_index do |e, i|
      if compara_area[i]
        resultado << list[i]
      end
    end
    resultado
  end
end