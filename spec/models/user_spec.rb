require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @test_user = User.new
  end

  describe 'When the user model is tested' do
    it 'validates the name of the food' do
      @test_user.created_at = '2023-02-10 03:46:44.223198'
      expect(@test_user.created_at).to eq '2023-02-10 03:46:44.223198'
    end
    it 'validates the name of the food' do
      @test_user.updated_at = '2023-02-10 03:46:44.223198'
      expect(@test_user.updated_at).to eq '2023-02-10 03:46:44.223198'
    end
  end
end
