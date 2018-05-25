require 'json'

class RisesApplication
  def call(env)
    request = Rack::Request.new(env)
    if env['PATH_INFO'] == '' # /rises
      if request.post?
        rise = JSON.parse(request.body.read)
        Database.add_rise(rise)
        [200, {}, ['Rise recieved']]
      else
        [200, {}, [Database.rises.to_s]]
      end
    elsif env['PATH_INFO'] =~ %r{/\d+} # /rises/1
      id = env['PATH_INFO'].split('/').last.to_i
      [200, {}, [Database.rises[id].to_s]]
    else
      [404, {}, 'Nothing Here!']
    end
  end
end
