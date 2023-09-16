require 'rails_helper'

RSpec.describe 'General Shopping List', type: :system do
  describe 'Shopping List page' do
    let!(:user) do
      User.create(name: 'Wamaya', email: 'wamaya@gmail.com', password: '123456',
                  password_confirmation: '123456')
    end

    let!(:food) do
      Food.create(name: 'Pizza', measurement_unit: 'Ounches', price: 2000,
                  quantity: 2, user_id: user.id)
    end

    let!(:recipe) do
      Recipe.create(name: 'Pizza recipe', preparation_time: 5, cooking_time: 10,
                    description: 'Pizza recipe description', public: true, user_id: user.id)
    end

    let!(:recipe_food) { RecipeFood.create(food_id: food.id, recipe_id: recipe.id, quantity: 3) }

    before do
      sign_in user
      visit general_shopping_list_path
    end

    it 'displays the view title' do
      expect(page).to have_css('h1', text: 'Shopping List')
    end

    it 'displays the amount of food items to buy' do
      expect(page).to have_content('Amount of food items to buy: 2')
    end

    it 'displays the total value of food needed' do
      expect(page).to have_content('Total value of food needed: 4000.0')
    end

    it 'displays the table headers' do
        expect(page).to have_content('Food')
        expect(page).to have_content('Quantity')
        expect(page).to have_content('Price')
      end

    it 'displays the name and quantity of the items to buy' do
      expect(page).to have_content('Pizza')
      expect(page).to have_content('2.0 Ounches')
      expect(page).to have_content('$ 4000.0')
    end
  end
end