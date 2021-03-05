require 'spec_helper'

describe 'AnagramCounter' do
  it 'Recebe lista de palavras e retorna número de anagramas' do
    list = 'aaaa aebe oooeee oeoeoe'

    expect(AnagramCounter.new.count(list)).to eq 2
  end

  it 'Recebe lista de palavras e retorna número de anagramas' do
    list = 'ddddd abb bab cccc bba eeee aaabbb'

    expect(AnagramCounter.new.count(list)).to eq 3
  end

  it 'Recebe lista de palavras e retorna número de anagramas' do
    list = 'ecoac abanan opaoobl eajjijcjo banana lalala oploco ananab fapjcpejp aaannb'

    expect(AnagramCounter.new.count(list)).to eq 4
  end

  it 'Recebe lista de palavras e retorna número de anagramas' do
    list = 'doctorwho faepgoao paoeffie pfoiafep rotwdooch aogpaeokg agekapgoaek torchwood'

    expect(AnagramCounter.new.count(list)).to eq 3
  end
end

