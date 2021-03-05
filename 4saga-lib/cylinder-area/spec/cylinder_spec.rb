require 'spec_helper'

describe Cylinder do
  context '#calculate_area' do
    it 'Calcula área do cilindro' do
      result = Cylinder.new.calculate_area('1x2')

      expect(result).to eq 18
    end

    it 'Calcula área do cilindro' do
      result = Cylinder.new.calculate_area('10x12')

      expect(result).to eq 1320
    end
  end

  context '#find_cylinders' do
    it 'Calcula áreas e retorna cilindros com áreas maiores ou iguais a alvo' do
      list = ['1x1', '2x10']
      result = Cylinder.new.find_cylinders(list, 100)

      expect(result).to include '2x10'
      expect(result).not_to include '1x1'
    end

    it 'Calcula áreas e retorna cilindros com áreas maiores ou iguais a alvo' do
      list = ['1x1', '2x1', '2x3']
      result = Cylinder.new.find_cylinders(list, 20)

      expect(result).to include '2x1', '2x3'
      expect(result).not_to include '1x1'
    end

    it 'Calcula áreas e retorna cilindros com áreas maiores ou iguais a alvo' do
      list = ['2x2', '2x1']
      result = Cylinder.new.find_cylinders(list, 1000)

      expect(result).to eq []
    end

    it 'Calcula áreas e retorna cilindros com áreas maiores ou iguais a alvo' do
      list = ['10x12', '11x15', '2x5', '4x10', '3x4']
      result = Cylinder.new.find_cylinders(list, 200)

      expect(result).to include '10x12', '11x15', '4x10'
      expect(result).not_to include '2x5', '3x4'
    end

    it 'Calcula áreas e retorna cilindros com áreas maiores ou iguais a alvo' do
      list = ['13x10', '10x11', '12x5', '10x10', '9x8']
      result = Cylinder.new.find_cylinders(list, 1000)

      expect(result).to include '13x10', '10x11', '12x5', '10x10'
      expect(result).not_to include '9x8'
    end
  end
end
