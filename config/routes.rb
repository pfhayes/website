Personal::Application.routes.draw do
    match 'resume' => 'resume#resume', :as => :resume
    match 'cv' => 'resume#cv', :as => :cv
    match 'portfolio' => 'folios#portfolio', :as => :portfolio
    post 'shorten' => 'redirects#create', :as => :shorten
    root :to => "home#home"

  # redirecting match
    match ':code(.:format)' => 'redirects#redirect', :as => :redirect

  # Nothing left, route to error page
    match '*wild' => 'application#render_404', :as => :error_404
end
