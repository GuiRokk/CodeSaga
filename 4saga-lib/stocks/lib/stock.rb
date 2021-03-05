class Stock
  def evaluate(stock)
    stock = stock.split(":")
    variacao = stock[1].split(" ").map(&:to_i)
    lucro = variacao.combination(2).to_a.map{|e| [e[1],e[0]]}
    stonks=[]
    lucro.each do |compra_venda|
      stonks << compra_venda.inject(:-)
    end
    "#{stock[0]}:#{stonks.max}"
  end
  def evaluate_stocks(stocks)
    stocks = stocks.split("\n")
    stonks = []
    max=0
    res=0
    stocks.each_with_index do |elemento, i|
      acao = evaluate(stocks[i])
      valor = acao.split(":")[1].to_i
      if valor > max
        max = valor
        res = acao
      end
    end
    res
  end
end
