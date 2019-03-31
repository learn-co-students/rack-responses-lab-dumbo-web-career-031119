class Application

  def call(env)
    resp = Rack::Response.new

    the_time = Time.now.hour

    if the_time < 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
    resp.finish


  end
end
