RSpec.describe Product, type: :model do
  describe 'Validations' do
    @category = Category.new(name: 'cat1')
    @product = Product.new(
      name: 'pizzabutt',
      description: 'most amazing pizza',
      image: 'https://pbs.twimg.com/profile_images/3620421177/220b049d3803322f01bd8f60c36699b3.jpeg',
      price_cents: 43,
      quantity: 1,
      category_id: 1
      )
    it 'saves valid product' do
      expect(@product).to
    end
    it 'validates name presence' do
      expect(@product).to
    end
    it 'validates price presence' do
      expect(@product).to
    end
    it 'validates quantity presence' do
      expect(@product).to
    end
    it 'validates category presence' do
      expect(@product).to
    end
  end
end
