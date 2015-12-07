require 'rails_helper'

FactoryGirl.define do
  factory :user1, class: User do
    fname "John"
    lname  "Doe"
    email "hello@world.com"
  end

  factory :user2, class: User do
    fname "Agent"
    lname  "Smith"
    email "the@one.com"
  end
end

RSpec.describe User, type: :model do
  describe 'instantiation' do
    let!(:user1) { build(:user1) }

      it 'instantiates a list' do
        expect(user1.class.name).to eq("User")
      end
  end
  subject{User.all}
  describe 'the valid_email? method' do
    let!(:user1) { create(:user1)}
    it 'should recieve and email address' do
      expect { User.valid_email?( :email ) }.to_not raise_error
    end

    it 'should check if the email is in the database' do
      expect(subject.valid_email?('hello@world.com')).to be(true)
    end

    it 'should check that an email is not in the database' do
      expect(subject.valid_email?('not@in.database')).to be(false)
    end
  end
end