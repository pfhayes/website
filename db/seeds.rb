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
