Rails.application.routes.draw do

root to: "site#home"


  # We need to define devise_for just omniauth_callbacks:auth_callbacks otherwise it does not work with scoped locales
  # see https://github.com/plataformatec/devise/issues/2813

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

end
