class Application

  def call(env)

    resp = Rack::Response.new
    time = Time.now


    # good_morning = resp.write "#{Good Morning!}\n"
    # good_afternoon = resp.write "#{Good Afternoon!}\n"


    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end
end
