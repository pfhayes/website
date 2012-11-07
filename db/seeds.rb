# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Redirect.create([{ :code => 'fb', :url => 'https://www.facebook.com/pfhayes' },
                 { :code => 'tw', :url => 'https://www.twitter.com/pfjhayes' },
                 { :code => 'li', :url => 'http://www.linkedin.com/in/pfjhayes' },
                 { :code => 'gh', :url => 'https://www.github.com/pfhayes' }])

Folio.create([
  { :name => 'GitHub',
    :description => 'My GitHub repository.',
    :url => 'https://www.github.com/pfhayes'},
  { :name => 'WiktionaryMobile',
    :description => 'The Wikimedia Foundation mobile application for Wiktionary. Worked with a team of students from the University of Waterloo, University of Toronto, and University of British Columbia. Built with PhoneGap.',
    :url => 'https://www.github.com/wikimedia/WiktionaryMobile'},
  { :name => 'PubVision',
    :description => 'PubVision is a hackathon project that three friends and I built. PubVision is a photo booth for businesses that they can install at their venue to encourage fans to engage on Facebook.',
    :url => 'https://www.facebook.com/pages/PubVision/187061157978938'},
  { :name => 'Website',
    :description => "You're looking at it! Built with Rails, hosted on Heroku.",
    :url => '.' }].reverse)
