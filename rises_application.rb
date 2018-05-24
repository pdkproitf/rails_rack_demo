class RisesApplication
  def call(env)
    if env['PATH_INFO'] == ''
      [200, {}, [Database.rises.to_s]]
    elsif env['PATH_INFO'] =~ %r{/\d+}
      id = env['PATH_INFO'].split('/').last.to_i
      [200, {}, [Database.rises[id].to_s]]
    else
      [404, {}, 'Nothing Here!']
    end
  end
end
