require 'spec_helper'

describe 'Stock' do
  context '#evaluate' do
    it 'Recebe uma sequência de valores de uma ação e retorna o maior lucro' do
      stock = 'VND:1 4'

      expect(Stock.new.evaluate(stock)).to eq 'VND:3'
    end

    it 'Recebe uma sequência de valores de uma ação e retorna o maior lucro' do
      stock = 'XXP:3 78 30 12 1'

      expect(Stock.new.evaluate(stock)).to eq 'XXP:75'
    end

    it 'Recebe uma sequência de valores de uma ação e retorna a menor perda' do
      stock = 'XXS:89 18 9 2'

      expect(Stock.new.evaluate(stock)).to eq 'XXS:-7'
    end
  end

  context '#evaluate_stocks' do
    it 'Recebe uma lista de ações e retorna a de maior lucro possível' do
      stocks = <<~STOCKS
      ACC:3 25 25 22 561
      XXS:89 18 9 1
      TTT:1 4
      RRE:59 2492 24 242 92 20 99 -13
      STOCKS

      expect(Stock.new.evaluate_stocks(stocks)).to eq 'RRE:2433'
    end

    it 'Recebe uma lista de ações e retorna a de maior lucro possível' do
      stocks = <<~STOCKS
      DPW:21 11 14 1 13 2 4 55 12 15 1 15 22 14 4 1 14 23 25 12 39 12
      COO:21 51 2 51 53 14 61 5 12 6 2 67 1 25 23 21 23 62 3 2 1 6 53 3 51
      GRE:33 44 25 23 12 61 26 25 62 63 74 45 34 23 87 45 64 73 74 73 34 3
      FFR:21 43 65 87 23 34 45 67 78 53 36 27 32 67 73 53 12 56 26 46 43 34
      STOCKS

      expect(Stock.new.evaluate_stocks(stocks)).to eq 'GRE:75'
    end
  end
end