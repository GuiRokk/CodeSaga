class FileParser
    def to_integer(string)
        string.to_i(2)
    end
    
    def convert(caminho_arquivo)
        arquivo = File.open(caminho_arquivo) 
        res = arquivo.readlines.map(&:chomp).inject(0){|soma,x| soma + to_integer(x) }
        arquivo.close
        res
    end
end