class Ingredient < ApplicationRecord
  belongs_to :recipe
  
  validate :validate_number_of_ingredients_in_recipe

  def validate_number_of_ingredients_in_recipe
    if recipe.ingredients.count >= 3
      errors.add(:base, "A recipe can have a maximum of 3 ingredients")
    end
  end
end
