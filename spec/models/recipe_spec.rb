require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe Recipe, type: :model do
    it 'has this properties' do
      user = User.create(name: 'hamza', email: 'hamza@gmail.com', password: '123456')
      recipe = Recipe.new(name: 'Recipe 1', preparation_time: 2, cooking_time: 4, description: 'This is a recipe',
                          public: true, user:)
      expect(recipe).to be_valid
    end
    it 'is not valid without a name' do
      recipe = Recipe.new(name: nil)
      expect(recipe).not_to be_valid
    end
    it 'is not valid without a user' do
      recipe = Recipe.new(
        name: 'Recipe 1',
        preparation_time: 3,
        cooking_time: 6,
        description: 'Good recipe',
        public: true
      )
      expect(recipe).not_to be_valid
    end
  end
end
