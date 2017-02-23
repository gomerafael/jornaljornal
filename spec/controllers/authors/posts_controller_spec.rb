require 'rails_helper'

RSpec.describe Authors::PostsController, type: :controller do

        before(:each) do
          @request.env["devise.mapping"] = Devise.mappings[:admin]
          user = Author.create(name: 'Rafa', email: 'rafa@teste.com', password:'12345678', password_confirmation: '12345678')
          #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
          sign_in user
        end


    describe 'POST create' do
        it "create a new post with right parameters" do
            expect { post :create, params: { post: { title: 'Cerveja', body: 'Gosto' } } }.to change(Post, :count).by(1)
            expect(response).to redirect_to("/authors/posts/cerveja")
        end
    end


end


