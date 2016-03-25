Rails.application.routes.draw do
  resources :cats

  match '/curl_example' => 'request_example#get_example', via: :get
  # TEST: curl -H "Content-Type: application/json" -X POST -d "{\"cs\":[{\"name\":\"TEST\",\"description\":\"DESC\",\"age\":99}]}" http://localhost:3000/curl_example
  match '/curl_example' => 'request_example#notifyUpdate', via: :post

  match "/register"           => 'request_example#register', via: :post
  match "/system/:id/notify"  => 'request_example#updateSystem', via: :post
  match "/task/:id/notify"    => 'request_example#updateTask', via: :post

  #Versioning test
  #examples: localhost:3000/v1/test
  #          localhost:3000/v2/test
  scope module: 'api' do
      namespace :v1 do
        match "test" => "api#test", via: :all
      end

      namespace :v2 do
        match "test" => "api#test", via: :all
      end
  end

end
