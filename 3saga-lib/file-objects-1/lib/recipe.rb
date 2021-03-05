require 'json'
class Recipe 
    attr_accessor :title, :description, :ingredients, :cook_time, :featured

    def initialize(title:, description:, ingredients:, cook_time:, featured:)
        @title = title
        @description = description
        @ingredients = ingredients
        @cook_time = cook_time
        @featured = featured
    end

    def self.from_json(path)
        json = File.read(path)
        data = JSON.parse json
        Recipe.new(title: data['title'],
                   description: data['description'],
                   ingredients: data['ingredients'],
                   cook_time: data['cook_time'],
                   featured: data['featured'])
    end

end