class Application
  def call(env)
    resp = Rack::Response.new
    
    time = Time.now.hour 
    
     if time.between?(0,11)
       resp.write "Good Morning!"
     elsif time.between?(12,17)
      resp.write "Good Afternoon!"
     else 
      resp.write "Good Evening!"
     end   
    resp.finish
  end 
  
  
end   
  