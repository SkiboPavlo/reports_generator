require 'spec_helper'
require 'rspec/rails'

RSpec.describe User do

  example 'it should set only valid attributes' do
    expect(User.new(:name)).to be_nil
    expect(User.new(:password)).to be_nil
    expect(User.new(:confirm_password)).to be_nil
  end

  example 'it should create user' do
    expect(subject.size).to eq 36
  end

  example 'it should successfully log_in' do
    expect(subject.size).to eq 36
  end

example 'it should successfully log_out' do
    expect(subject.size).to eq 36
  end
