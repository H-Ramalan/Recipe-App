class User < ApplicationRecord
  has_many :recipes, dependent: :destroy, class_name: 'Recipe'
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, dependent: :destroy

end
