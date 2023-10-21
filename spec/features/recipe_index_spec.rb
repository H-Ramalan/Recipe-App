require 'rails_helper'

RSpec.feature 'Recipe#index Page', type: :feature do
  before do
    visit recipe_index_path
  end

  scenario 'user can add a new recipe' do
    user = create(:user)
    login_as(user, scope: :user)
    # visit recipe_index_path
    click_button('Add Recipe')
    expect(page).to have_current_path(new_recipe_path)
  end
end
