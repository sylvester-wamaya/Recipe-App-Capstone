require 'rails_helper'

RSpec.describe "foods/show", type: :view do
  before(:each) do
    assign(:food, Food.create!(
      name: "Name",
      measurement_unit: 2.5,
      price: 3.5,
      quantity: 4.5,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(//)
  end
end
