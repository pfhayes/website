Personal::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
    match 'resume' => 'home#resume', :as => :resume
    match 'cv' => 'home#cv', :as => :cv
    match 'portfolio' => 'folios#portfolio', :as => :portfolio
    match 'shorten' => 'redirects#create', :as => :shorten

  # redirecting match
    match ':code(.:format)' => 'redirects#redirect', :as => :redirect

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
    root :to => "home#resume"

  # Nothing left, route to 404 page
    match '*wild' => 'home#error_404', :as => :error_404

  # See how all your routes lay out with "rake routes"
end
