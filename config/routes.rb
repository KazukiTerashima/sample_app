Rails.application.routes.draw do
  get 'static_pagae/home'
  get 'static_pagae/help'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
