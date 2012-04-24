# this will be my default template when creating a Rails app that runs on MS SQL2008 database
run "rm public/index.html"
generate(:scaffold, "person name:string")
route "root :to => 'people#index'"
rake("db:migrate")
 
git :init
git :add => "."
git :commit => "-a -m 'Initial commit'"