SubwayApp::Application.routes.draw do

get "/lines", :controller => "lines", :action => "index", :as => :metro_lines
post "/lines", :controller => "lines", :action => "create"

get "/lines/new", :controller => "lines", :action => "new", :as => :new_metro_line
get "/lines/:id", :controller => "lines", :action => "show", :as => :metro_line
put "/lines/:id", :controller => "lines", :action => "update"
delete "/lines/:id", :controller => "lines", :action => "destroy"

get "/lines/:id/edit", :controller => "lines", :action => "edit", :as => :edit_metro_line 


end