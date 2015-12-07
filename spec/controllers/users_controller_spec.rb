require 'rails_helper'
require 'factory_girl_rails'

FactoryGirl.define do
  factory :existinguser, class: User do
    fname "John"
    lname  "Doe"
    email "valid@email.com"
    id "42"
  end

  factory :list, class: Guestlist do
    user_id "42"
  end
end

describe UsersController, :type => :controller do
  describe 'GET new' do
      it 'assigns @user' do
        get :new
        expect(assigns(:user)).to be_a_new(User)
      end

      it 'renders the new template' do
        get :new
        expect(response).to render_template('new')
      end
  end

  describe 'POST create' do
    it 'should have valid params' do
      post :create, :user => {:fname => 'first', :lname => 'last', :email => 'hello@world.com'}
      expect(controller.params[:user]).to_not be_nil
      expect(controller.params[:user]).to eq({'fname' => 'first', 'lname' => 'last', 'email' => 'hello@world.com'})
    end

    it 'assigns @user and does User.create' do
      post :create, :user => {:fname => 'first', :lname => 'last', :email => 'hello@world.com'}
      expect(assigns(:user)).to eq(User.last)
    end

    it 'assigns @guest and does Guestlist.create' do
      post :create, :user => {:fname => 'first', :lname => 'last', :email => 'hello@world.com'}
      expect(assigns(:guest)).to eq(Guestlist.find(User.last.id))
    end

    it 'renders the index template' do
      post :create, :user => {:fname => 'first', :lname => 'last', :email => 'hello@world.com'}
      expect(response).to redirect_to('/users')
    end
  end

  describe 'POST create_to_queue' do
    subject{ User.all }
    let!(:existinguser) { create(:existinguser)}
    it 'should set @user' do
      post :create_to_queue, :email => 'hello@world.com'
      expect(assigns(:user)).to eq(User.all)
    end

    it 'should redirect to queue with proper email' do
      post :create_to_queue, :email => 'jjbetz@cemail.com'
      expect(response).to redirect_to('/guestlists')
    end

    it 'should create a new entry in the guestlist' do
      post :create_to_queue, :email => 'valid@email.com'
      expect(Guestlist.last.user_id).to eq(42);
    end

    it 'should assign success flash with valid email' do
      post :create_to_queue, :email => 'valid@email.com'
      expect(flash[:success]).to be_present
    end

    it 'renders the index template with valid email' do
      post :create_to_queue, :email => 'valid@email.com'
      expect(response).to redirect_to('/users')
    end

    it 'should assign danger flash with invalid email' do
      post :create_to_queue, :email => 'not@in.db'
      expect(flash[:danger]).to be_present
    end

    it 'renders the index template with invalid email' do
      post :create_to_queue, :email => 'not@in.db'
      expect(response).to redirect_to('/users')
    end
  end

  describe 'PATCH update' do
    let!(:existinguser) { create(:existinguser)}
    let!(:list) { create(:list)}

    it 'should remove id from Guestlist' do
      patch :update, :id => '42', :user => {notes: 'this is a note'}
      expect(Guestlist.find_by(user_id: 42)).to be(nil)
    end

    it 'should update the users notes' do
      patch :update, :id => '42', :user => {notes: 'this is a note'}
      expect(User.find(42).notes).to eq('this is a note')
    end
  end
end