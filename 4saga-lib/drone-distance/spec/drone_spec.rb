require 'spec_helper'

describe Drone do
  it 'Recebe uma série de instruções e retorna a distância' do
    instructions = <<~INSTRUCTIONS
      N10
      L10
      S5
      O12
    INSTRUCTIONS
    expect(Drone.new.manhattan_distance(instructions)).to eq(7)
  end

  it 'Recebe uma série de instruções e retorna a distância' do
    instructions = <<~INSTRUCTIONS
      N10
      L10
      S5
      N20
      O12
    INSTRUCTIONS
    expect(Drone.new.manhattan_distance(instructions)).to eq(27)
  end

  it 'Recebe uma série de instruções e retorna a distância' do
    instructions = <<~INSTRUCTIONS
      N10
      L10
      S10
      O10
    INSTRUCTIONS
    expect(Drone.new.manhattan_distance(instructions)).to eq(0)
  end

  it 'Recebe uma série de instruções e retorna a distância' do
    instructions = <<~INSTRUCTIONS
      N10
      L10
      S30
      L15
      O5
    INSTRUCTIONS
    expect(Drone.new.manhattan_distance(instructions)).to eq(40)
  end

  it 'Recebe uma série de instruções e retorna a distância' do
    instructions = <<~INSTRUCTIONS
      O2
      N23
      S1
      O3
      L3
      N4
      S17
      O4
      L4
      N4
      S1
      L4
      L5
      O2
    INSTRUCTIONS
    expect(Drone.new.manhattan_distance(instructions)).to eq(17)
  end

  it 'Recebe uma série de instruções e retorna a distância' do
    instructions = <<~INSTRUCTIONS
      N2
      N23
      S1
      O3
      S3
      L4
      N17
      S4
      N4
      O4
      L1
      N4
      N5
      L90
      O43
      N5
      S90
      N12
      O4
      N1
      O3
      L2
      N4
      S76
      S1
      O4
      L2
      N20
      N4
      S81
      O4
      N3
      O4
      N1
      N65
      O5
      L90
      S3
      N38
      L90
      L90
      N5
      N50
      S1
      L90
      O2
      N3
      S49
      L90
      O4
    INSTRUCTIONS
    expect(Drone.new.manhattan_distance(instructions)).to eq(512)
  end
end
