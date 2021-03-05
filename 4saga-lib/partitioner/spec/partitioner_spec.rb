require 'spec_helper'

describe 'Partitioner' do
  it 'Verifica se array pode ser dividido em duas partes com somas iguais' do
    values = [2, 3, 5, 6]

    expect(Partitioner.new.subset(values)).to eq true
  end

  it 'Verifica se array pode ser dividido em duas partes com somas iguais' do
    values = [2, 3, 6, 7, 3]

    expect(Partitioner.new.subset(values)).to eq false
  end

  it 'Verifica se array pode ser dividido em duas partes com somas iguais' do
    values = [10, 5, 20, 15, 50, 30]

    expect(Partitioner.new.subset(values)).to eq true
  end

  it 'Verifica se array pode ser dividido em duas partes com somas iguais' do
    values = [4, 52, 22, 20, 100, 5, 15, 25, 50]

    expect(Partitioner.new.subset(values)).to eq false
  end

  it 'Verifica se array pode ser dividido em duas partes com somas iguais' do
    values = [8, 52, 22, 28, 30, 5, 15, 25, 55]

    expect(Partitioner.new.subset(values)).to eq true
  end

  it 'Verifica se array pode ser dividido em duas partes com somas iguais' do
    values = [12, 10, 22, 14, 15, 35, 8, 32, 45, 16]

    expect(Partitioner.new.subset(values)).to eq false
  end
end
