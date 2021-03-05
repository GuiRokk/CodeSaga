class PasswordValidator
  
  def valid_passwords(list)
    senhas = []
    list.each do |elemento|
      dados = elemento.tr!("->"," ").split(":")
      regra = dados[0].split(" ")
      senha = dados[1]
      
      lim_min = regra[0].to_i 
      lim_max = regra[1].to_i
      chave = regra[2]
      vezes_chave = senha.count(chave)
      
      if (lim_min..lim_max) === vezes_chave
        senhas << senha
      end
    end
    senhas
  end
end