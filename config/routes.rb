Rails.application.routes.draw do
  
  get("/", { :controller => "math", :action => "show" })
  get("/square/new", { :controller => "math", :action => "square" })
  get("/square_root/new", { :controller => "math", :action => "square_root" })
  get("/payment/new", { :controller => "math", :action => "payment" })
  get("/random/new", { :controller => "math", :action => "random" })

end
