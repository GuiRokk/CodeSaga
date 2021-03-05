require 'spec_helper'

describe TriangleValidator do
  it 'Recebe lista e retorna multiplicação de lados dos triângulos válidos' do
    list = '3 4 54 6 23'
    result = TriangleValidator.new.validate_list(list)
    valid_triangles = result.length

    expect(valid_triangles).to eq 1
    expect(result).to include(72)
  end

  it 'Recebe lista e retorna multiplicação de lados dos triângulos válidos' do
    list = '22 2 12 5 4'
    result = TriangleValidator.new.validate_list(list)
    valid_triangles = result.length

    expect(valid_triangles).to eq 1
    expect(result).to include(40)
  end

  it 'Recebe lista e retorna multiplicação de lados dos triângulos válidos' do
    list = '5 33 626 88 2 151'
    result = TriangleValidator.new.validate_list(list)
    valid_triangles = result.length

    expect(valid_triangles).to eq 0
  end

  it 'Recebe lista e retorna multiplicação de lados dos triângulos válidos' do
    list = '32 21 352 8 5 61 16'
    result = TriangleValidator.new.validate_list(list)
    valid_triangles = result.length

    expect(valid_triangles).to eq 2
    expect(result).to include(10752, 2688)
  end

  it 'Recebe lista e retorna multiplicação de lados dos triângulos válidos' do
    list = '4 2 3 8 5 6 1'
    result = TriangleValidator.new.validate_list(list)
    valid_triangles = result.length

    expect(valid_triangles).to eq 11
    expect(result).to include(24, 40, 60, 72, 160, 192, 120, 60, 144, 90, 240)
  end
end
