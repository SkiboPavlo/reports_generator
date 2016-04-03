require 'spec_helper'
require 'rails_helper'

RSpec.describe Product do

  example 'it should set only valid attributes' do
    expect(Product.new({:name => 'Pasha'}).to be_nil
    expect(Product.new({:price => 2}).to be_nil
    expect(Product.new({:count => 5}).to be_nil
  end

   example 'it should create product' do
    expect(subject).to eq Product.new
  end

   example 'it should update product' do
    expect(subject).to eq
  end

   example 'it should destroy product' do
    expect(subject).to eq
  end
end

