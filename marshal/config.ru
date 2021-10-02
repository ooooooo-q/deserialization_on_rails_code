require 'delegate'

class SessionCookieTest
  def call(env)
    [ 200,
      {},
      ["session cookie test"]
    ]
  end
end

use Rack::Session::Cookie
run SessionCookieTest.new