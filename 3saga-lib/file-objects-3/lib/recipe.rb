require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(caminho_arquivo)
    
    dados = JSON.parse(File.read(caminho_arquivo))

    if dados.is_a?(Array)
      array = []
      dados.each do |elemento|
        
        array << Recipe.new(title: elemento['title'],
        description: elemento['description'],
        ingredients: elemento['ingredients'],
        cook_time: elemento['cook_time'],
        featured: elemento['featured'])
      end
      array
    else
      Recipe.new(title: dados['title'],
               description: dados['description'],
               ingredients: dados['ingredients'],
               cook_time: dados['cook_time'],
               featured: dados['featured'])
    end
  end
 
  def save_to_file
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end
end