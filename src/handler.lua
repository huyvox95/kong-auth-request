local access = require "kong.plugins.basic-auth.access"

local BasicAuthHandler = {
  VERSION = "0.1.8",
  PRIORITY = 113,
}

function BasicAuthHandler:access(conf)
  access.execute(conf)
end

return BasicAuthHandler
