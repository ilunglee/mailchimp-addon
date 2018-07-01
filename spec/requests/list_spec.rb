require 'spec_helper'

describe MCAddon::List do
  it 'lists out members', vcr: true do
    members = MCAddon::List.members
    expect(members.body).to_not eq(nil)
  end

  it 'subscribes member', vcr: true do
    res = MCAddon::List.subscribe(email: 'sample@gmail.com')
    expect(res.body['email_address']).to eq('sample@gmail.com')
  end

  it 'throws error if no email' do
    expect { MCAddon::List.subscribe }.
      to raise_error(MCAddon::Exceptions::EmailMissingError,
                     'missing email')
  end

  it_behaves_like 'a gibbon request' do
    subject { MCAddon::List.new }
  end
end
