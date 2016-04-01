require 'spec_helper'
require 'rspec/rails'

RSpec.describe Template do

 example 'it should set only valid attributes' do
    expect(Template.new(:name)).to be_nil
  end

   example 'it should generate report' do
    expect(subject.size).to eq 36

   example 'it should create template' do
    expect(subject.size).to eq 36
  end

   example 'it should update template' do
    expect(subject.size).to eq 36
  end

   example 'it should destroy template' do
    expect(subject.size).to eq 36
  end
