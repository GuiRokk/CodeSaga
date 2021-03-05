require 'spec_helper'

describe PasswordValidator do
  it 'Procura senhas válidas na lista e as retorna' do
    list = [
            '3->5 b:aabbbbcde',
           ]
    result = PasswordValidator.new.valid_passwords(list)

    expect(result).to include 'aabbbbcde'
  end

  it 'Procura senhas válidas na lista e as retorna' do
    list = [
            '1->2 c:akecccl'
           ]
    result = PasswordValidator.new.valid_passwords(list)

    expect(result).not_to include 'akecccl'
  end

  it 'Procura senhas válidas na lista e as retorna' do
    list = [
            '3->5 b:aabbbbcde',
            '1->2 c:akecccl'
           ]
    result = PasswordValidator.new.valid_passwords(list)

    expect(result).to include 'aabbbbcde'
    expect(result).not_to include 'akecccl'
  end

  it 'Procura senhas válidas na lista e as retorna' do
    list = [
            '1->3 b:aabgaee',
            '4->6 p:anxelpqepfapeqp',
            '1->2 z:zzzzzzzzz',
            '3->4 c:egeccclkm',
            '3->4 k:kkalielahwo'
           ]
    result = PasswordValidator.new.valid_passwords(list)

    expect(result).to include 'aabgaee', 'anxelpqepfapeqp', 'egeccclkm'
    expect(result).not_to include 'zzzzzzzzz', 'kkalielahwo'
  end

  it 'Procura senhas válidas na lista e as retorna' do
    list = [
            '1->3 b:aabgaeegaeggppg',
            '2->4 z:zzzzzzzzzaaavvv',
            '1->2 t:qpwoeirutiygdsl',
            '3->5 z:zzzzzaabbbbavvv',
            '2->5 x:lkjaegpiqejegpi',
            '1->5 m:efaempgegaoejpg',
            '3->4 f:igageficawopkcp',
            '2->3 o:qerpoqierppeqpc',
            '1->2 q:gpiaoejqekmgpiz',
           ]
    result = PasswordValidator.new.valid_passwords(list)

    expect(result).to include 'aabgaeegaeggppg', 'qpwoeirutiygdsl', 'zzzzzaabbbbavvv', 'efaempgegaoejpg', 'gpiaoejqekmgpiz'
    expect(result).not_to include 'zzzzzzzzzaaavvv', 'lkjaegpiqejegpi', 'igageficawopkcp', 'qerpoqierppeqpc'
  end
end
