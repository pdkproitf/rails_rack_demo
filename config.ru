class Application
  def call(env)
    [200, {}, ['Hello world!']]
  end
end

# run application
run Application.new
