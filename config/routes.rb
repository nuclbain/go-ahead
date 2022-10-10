# frozen_string_literal: true

# Setting the root route to the static_pages/home page.
Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
end
