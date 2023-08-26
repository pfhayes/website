Rails.application.routes.draw do
    get 'resume' => 'resume#resume', :as => :resume
    get 'cv' => 'resume#cv', :as => :cv
    get 'portfolio' => 'folios#portfolio', :as => :portfolio
    get 'contact' => 'resume#contact', :as => :contact
    root :to => "home#home"

    # redirecting match
    get 'fb' => redirect(Links::Facebook)
    get 'tw' => redirect(Links::Twitter)
    get 'li' => redirect(Links::Linkedin)
    get 'gh' => redirect(Links::Github)
    get 'fo' => redirect(Links::Foursquare)

    get 'zshrc' => redirect('https://raw.githubusercontent.com/pfhayes/dotfiles/master/.zshrc')
    get 'vimrc' => redirect('https://raw.githubusercontent.com/pfhayes/dotfiles/master/.vimrc')

    # Nothing left, route to error page
    get 'badgateway' => 'application#render_502', :as => :badgateway
    get '*wild' => 'application#render_404', :as => :error_404
end
