class Application
  def call(env)
    resp = Rack::Response.new

    afternoon = Time.parse "12:00 pm"

    current_time = Time.now
    resp.write "The current time is #{current_time}\n"
    resp.write "The cutoff to 'afternoon' is #{afternoon}\n"
    resp.write current_time.hour
    resp.write current_time.minute
    if current_time < afternoon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish

  end

end
