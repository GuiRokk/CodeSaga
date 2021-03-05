require 'spec_helper'

describe Assembly do
  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      mov x,7
      add x,3
      sub x,10
      add x,0
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(0)
  end

  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      add x,3
      sub x,10
      add x,7
      add x,5
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(5)
  end

  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      mov x,10
      add x,3
      jmp l5
      sub x,10
      mov x,0
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(0)
  end

  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      mov x,7
      mov x,5
      add x,3
      sub x,10
      add x,0
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(-2)
  end

  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      mov x,7
      mov x,5
      add x,3
      jmp l6
      sub x,10
      add x,2
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(10)
  end

  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      mov x,0
      add x,3
      jmp l12
      sub x,10
      mov x,0
      mov x,100
      add x,10
      sub x,20
      mov x,0
      add x,10
      sub x,100
      add x,100
      add x,100
      sub x,10
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(193)
  end

  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      mov x,0
      add x,3
      jmp l12
      sub x,10
      mov x,0
      mov x,100
      add x,10
      sub x,20
      mov x,0
      add x,10
      sub x,100
      add x,-100
      add x,100
      sub x,10
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(-7)
  end

  it 'Recebe uma série de instruções e retorna o valor de X' do
    instructions = <<~INSTRUCTIONS
      mov x,0
      add x,3
      jmp l5
      sub x,10
      mov x,0
      mov x,100
      add x,10
      jmp l12
      sub x,20
      mov x,0
      add x,10
      sub x,100
      add x,-100
      add x,100
      sub x,10
    INSTRUCTIONS
    expect(Assembly.new.compile(instructions)).to eq(0)
  end
end
