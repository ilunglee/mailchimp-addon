require 'spec_helper'

describe MCAddon do
  it 'should have a version number' do
    expect(MCAddon::VERSION).not_to be nil
  end

  it 'should have an api_key property' do
    expect(MCAddon).to respond_to(:api_key)
  end

  it 'should have an list_id property' do
    expect(MCAddon).to respond_to(:list_id)
  end

  it 'should have an timeout property' do
    expect(MCAddon).to respond_to(:timeout)
  end
end
