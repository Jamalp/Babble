Babble::Application.routes.draw do
  get '/' => 'map#index'
  get '/tweets' => 'map#tweets'
end
