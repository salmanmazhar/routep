Rails.application.routes.draw do
  get 'static_pages/home'
  scope 'api/' do
    namespace :v1 do
      get 'suggest' => 'suggestions#home'
      post 'suggest' => 'suggestions#receiveterm'
    end
  end
end
