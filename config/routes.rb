Babble::Application.routes.draw do
  get '/' => 'map#index'
  get '/index' => 'map#tweets'
end
