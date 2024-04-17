Rails.application.routes.draw do
  
  get("/", { :controller => "math", :action => "show" })
  get("/square/new", { :controller => "math", :action => "square" })
  get("/square_root/new", { :controller => "math", :action => "square_root" })
  get("/payment/new", { :controller => "math", :action => "payment" })
  get("/random/new", { :controller => "math", :action => "random" })
  get("/square/results", { :controller => "math", :action => "square_result" })
  get("/square_root/results", { :controller => "math", :action => "square_root_result" })
  get("/payment/results", { :controller => "math", :action => "payment_result" })
  get("/random/results", { :controller => "math", :action => "random_result" })
end
