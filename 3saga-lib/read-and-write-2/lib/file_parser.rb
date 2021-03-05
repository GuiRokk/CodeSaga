class FileParser
    def to_binary_file(string)
        caminho = "data/data.txt"
        a = string.split(";").map{|e| e.to_i}.map{|x| x.to_s(2)}
        if !File.exists?(caminho)
            arquivo = File.new(caminho, "w")
            a.each do |e|
                arquivo.puts(e)
            end
            arquivo.close
        else
            arquivo = File.open(caminho, "a")
            a.each do |e|
                arquivo.puts(e)
            end
            arquivo.close
        end
    end
end