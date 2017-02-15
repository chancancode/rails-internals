Rails.application.routes.draw do
  mount Rails::Internals::Engine => "/rails-internals"
end
