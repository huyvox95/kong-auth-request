local access = require "kong.plugins.kong-auth-request.access"
local AuthRequestHandler = {
	  VERSION  = "0.1.8",
          PRIORITY = 900,
    }

function AuthRequestHandler:new()
  AuthRequestHandler.super.new(self, "kong-auth-request")
end

function AuthRequestHandler:access(conf)
  AuthRequestHandler.super.access(self)
  access.execute(conf)
end

return AuthRequestHandler
