Rails.application.routes.draw do
  match '/version' => 'pages#version'
end

