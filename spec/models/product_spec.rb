require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'saves valid product' do
      @category = Category.create(name: 'cat1')
      @product = Product.create(
        name: 'pizzabutt',
        description: 'most amazing pizza',
        image: 'https://pbs.twimg.com/profile_images/3620421177/220b049d3803322f01bd8f60c36699b3.jpeg',
        price_cents: 43,
        quantity: 1,
        category_id: @category.id
      )
      expect(@product).to be_valid
    end
    it 'validates name presence' do
      @category = Category.create(name: 'cat2')
      @product = Product.create(name: 'pizzabutt')
      expect(@product).to_not be_valid
    end
    it 'validates price presence' do
      @category = Category.create(name: 'cat3')
      @product = Product.create(price: 100)
      expect(@product).to_not be_valid
    end
    it 'validates quantity presence' do
      @category = Category.create(name: 'cat4')
      @product = Product.create(quantity: 4)
      expect(@product).to_not be_valid
    end
    it 'validates category presence' do
      @category = Category.create(name: 'cat5')
      @product = Product.create(category: @category)
      expect(@product).to_not be_valid
    end
  end
end

