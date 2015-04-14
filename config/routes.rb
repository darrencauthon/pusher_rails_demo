Rails.application.routes.draw do
  get '/' => 'main#index'
  PoxaAssist::RailsRouting.inject_into self
end
