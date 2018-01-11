Personal::Application.routes.draw do
    get 'resume' => 'resume#resume', :as => :resume
    get 'cv' => 'resume#cv', :as => :cv
    get 'portfolio' => 'folios#portfolio', :as => :portfolio
    post 'shorten' => 'redirects#create', :as => :shorten
    root :to => "home#home"

    # redirecting match
    get ':code(.:format)' => 'redirects#redirect', :as => :redirect

    # Nothing left, route to error page
    get '*wild' => 'application#render_404', :as => :error_404
end
