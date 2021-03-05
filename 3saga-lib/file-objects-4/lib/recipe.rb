require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured:)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(json_file)
    attributes = JSON.parse(File.read(json_file))
    if attributes.is_a?(Array)
      from_json_array(attributes)
    else
      Recipe.new(title: attributes['title'],
                 description: attributes['description'],
                 ingredients: attributes['ingredients'],
                 cook_time: attributes['cook_time'],
                 featured: attributes['featured'])
    end
  end

  def self.from_json_array(array)
    array.map do |object|
      Recipe.new(title: object['title'],
                 description: object['description'],
                 ingredients: object['ingredients'],
                 cook_time: object['cook_time'],
                 featured: object['featured'])
    end
  end

  def save_to_file
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end

  def to_json()
    {'title' => "[Destaque] #{@title}", 
    'description' => @description,
    'ingredients' => @ingredients,
    'cook_time' => "#{@cook_time} minutos"}.to_json
  end

end
