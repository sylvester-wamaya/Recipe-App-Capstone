require 'rails_helper'

RSpec.describe 'food/index', type: :system do
  describe 'index page' do
    let!(:user) do
      User.create(name: 'Wamaya', email: 'wamaya@gmail.com', password: '123456',
                  password_confirmation: '123456')
    end
    before(:each) do
        food1 = Food.create(user_id: user.id, name: 'Pizza', measurement_unit: 'ounches', price: 2000, quantity: 2)
        food2 = Food.create(user_id: user.id, name: 'Rice', measurement_unit: 'grams', price: 100, quantity: 1)
        sign_in user
        visit foods_path
    end

    it 'displays a list of foods' do
      expect(page).to have_content('Food')
      expect(page).to have_content('Measurement unit')
      expect(page).to have_content('Unit price')
      expect(page).to have_content('Actions')

      expect(page).to have_content(food1.name)
      expect(page).to have_content(food2.name)
      expect(page).to have_content(food1.measurement_unit)
      expect(page).to have_content(food2.measurement_unit)
      expect(page).to have_content(food1.quantity)
      expect(page).to have_content(food2.quantity)
    end

    it 'Display button delete' do
      expect(page).to have_button('Delete')
    end

    it 'Check correct url' do
      expect(page).to have_link('Add food', href: new_food_path)
    end
  end
end