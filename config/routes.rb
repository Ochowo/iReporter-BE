# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html\
  get '/' => 'welcome#index'

  scope 'auth' do
    post '/signup' => 'users#create'
    post '/login' => 'authentication#authenticate'
  end
  scope 'incidents' do
    post '/' => 'incidents#create'
  end
end
