class Application

  def call(env)
    resp = Rack::Response.new

    if 12 > Time.now.hour
      resp.write"Good Morning"
    elsif 12 < Time.now.hour
      resp.write"Good Afternoon"
    else
      resp.write"What the fuck kinda time are you in?"
    end

    resp.finish
  end
end 
