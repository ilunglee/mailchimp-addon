require 'spec_helper'

shared_examples 'a gibbon request' do
  it 'should throw an error if the api_key is nil' do
    allow(MCAddon).to receive(:api_key) { nil }
    expect { subject }.
      to raise_error(MCAddon::Exceptions::KeyMissingError,
                     'missing api_key or list_id')
  end

  it 'should throw an error if the api_key is nil' do
    allow(MCAddon).to receive(:api_key) { nil }
    expect { subject }.
      to raise_error(MCAddon::Exceptions::KeyMissingError,
                     'missing api_key or list_id')
  end
end
