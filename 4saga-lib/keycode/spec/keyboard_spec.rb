require 'spec_helper'

describe 'Keyboard' do
  it 'Recebe sequência de movimentos e retorna código teclado' do
    keypad = [['1', '2'], ['3', '4'], ['5', '6']]
    instructions = 'C D E C'

    expect(Keyboard.new.keycode(instructions, keypad)).to eq '2211'
  end

  it 'Recebe sequência de movimentos e retorna código teclado' do
    keypad = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9']]
    instructions = 'C E E B'

    expect(Keyboard.new.keycode(instructions, keypad)).to eq '2114'
  end

  it 'Recebe sequência de movimentos e retorna código teclado' do
    keypad = [['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9']]
    instructions = 'CEEE DDBBBECBDE ECDBEEDECC CCCCBEEE'

    expect(Keyboard.new.keycode(instructions, keypad)).to eq '1814'
  end

  it 'Recebe sequência de movimentos e retorna código teclado' do
    keypad = [['Z','X', 'C'], ['Q', 'W', 'E'], ['A', 'S', 'D']]
    instructions = 'DEDCCBE ECBBBBBBED BCBCBCBE EBEBEBEBC DEBCBE'

    expect(Keyboard.new.keycode(instructions, keypad)).to eq 'WSAQA'
  end

  it 'Recebe sequência de movimentos e retorna código teclado' do
    keypad = [['Z','X', 'C', 'V'], ['Q', 'W', 'E', 'R'], ['A', 'S', 'D', 'F']]
    instructions = 'CBCBEDEDDEDECCC DECBBBBCEDCE DCBBECDBD CBEDEDCCEE DEBCBE'

    expect(Keyboard.new.keycode(instructions, keypad)).to eq 'XZDZQ'
  end

  it 'Recebe sequência de movimentos e retorna código teclado' do
    keypad = [['Z','X', 'C', 'V'], ['Q', 'W', 'E', 'R'], ['A', 'S', 'D', 'F'], ['1', '2', '3', '4']]
    instructions = 'CDECEEBE CBEDEDECCBB CBBEEBDCCED EDDBBBEEDD BEBEB CBBECD'

    expect(Keyboard.new.keycode(instructions, keypad)).to eq 'QAW31S'
  end
end
