class Application

  def call(env)
    resp = Rack::Response.new
    
    number_1 = Kernel.rand(1..20)
    number_2 = Kernel.rand(1..20)
    number_3 = Kernel.rand(1..20)

    if number_1 == number_2 && number_2 == number_3
    resp.write "You Win"
    else
    resp.write "You Lose"
    end
    resp.finish
  end
end
