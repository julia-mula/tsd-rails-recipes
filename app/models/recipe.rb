class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ingredients

  def as_json(options = {})
    super(options).merge({
      'title' => title,
      'description' => description,
      'ingredients' => ingredients.pluck(:name)
    })
  end
end
