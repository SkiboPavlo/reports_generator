require 'spec_helper'
require 'rspec/rails'

RSpec.describe Product do

  example 'it should set only valid attributes' do
    expect(Product.new(:name)).to be_nil
    expect(Product.new(:price)).to be_nil
    expect(Product.new(:count)).to be_nil
  end

   example 'it should create product' do
    expect(subject.size).to eq 36
  end

   example 'it should update product' do
    expect(subject.size).to eq 36
  end

   example 'it should destroy product' do
    expect(subject.size).to eq 36
  end
