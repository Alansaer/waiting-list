require 'rails_helper'
require 'factory_girl_rails'
FactoryGirl.define do
  factory :user3, class: User do
    fname "John"
    lname  "Doe"
    email "hello@world.com"
    id "1"
  end

  factory :user4, class: User do
    fname "Agent"
    lname  "Smith"
    email "the@one.com"
    id "2"
  end
end
FactoryGirl.define do
  factory :guestlist1, class: Guestlist do
    user_id "1"
  end

  factory :guestlist2, class: Guestlist do
    user_id "2"
  end
end

describe GuestlistsController, :type => :controller do
  describe 'GET index' do
    let!(:user3) { create(:user3) }
    let!(:guestlist1) { create(:guestlist1) }

    it 'assigns @guestlist' do
      get :index
      expect(assigns(:guestlist)).to eq(User.where("id IN (?)", Guestlist.select(:user_id)))
    end
  end

  describe 'GET show' do
    let!(:user3) { create(:user3) }
    let!(:guestlist1) { create(:guestlist1) }

    it 'assigns @guestlist' do
      get :show, :id => 1
      expect(assigns(:guestlist)).to eq(User.find(1))
    end
  end

end