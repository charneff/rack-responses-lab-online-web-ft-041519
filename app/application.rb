require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    hour = Time.now.hour

    if hour >= 12
      resp.write "Good afternoon!"
    else
      resp.write "Good morning!"
    end
    resp.finish
  end
end
