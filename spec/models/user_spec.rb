require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'valid user will save' do
      @user = User.new(name: 'Brendan Walker',
        email: 'b@gmail.com',
        password: 'butts',
        password_confirmation: 'butts'
      )
      expect(@user).to be_valid
    end

    it 'validates password length' do
      @user = User.new(name: 'Brendan Walker',
        email: 'b@gmail.com',
        password: 'bu',
        password_confirmation: 'bu'
      )
      expect(@user).to_not be_valid
    end

    it 'validates name presence' do
      @user = User.new(name: nil,
        email: 'b@gmail.com',
        password: 'butts',
        password_confirmation: 'butts'
      )
      expect(@user).to_not be_valid
    end

    it 'validates password presence' do
      @user = User.new(name: 'Brendan Walker',
        email: 'b@gmail.com',
        password: nil,
        password_confirmation: nil
      )
      expect(@user).to_not be_valid
    end

    it 'validates password confirmation' do
      @user = User.new(name: 'Brendan Walker', email: 'b@gmail.com', password:'squanchy', password_confirmation: 'squanch')
      expect(@user.password).not_to eql(@user.password_confirmation)
      expect(@user).to_not be_valid
    end
  end
end