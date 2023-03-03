Rails.application.routes.draw do
get("/", { :controller => "application", :action => "homepage" })
get("/directors/youngest" , { :controller => "directors" , :action => "youngest"})
get("/directors/eldest", { :controller => "directors" , :action => "wisest"})
get("/directors", { :controller => "directors" , :action => "index"})
get("/directors/:an_id", {:controller => "directors" , :action => "director_details"})
get("/movies",{ :controller => "directors" , :action => "movies"})
get("/movies/:film_id" ,{ :controller => "directors" , :action => "movies_details"})

end
