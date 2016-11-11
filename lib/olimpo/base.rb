require "httmultiparty"

module Olimpo
  class Base
    include HTTMultiParty
    base_uri Olimpo.base_uri
    basic_auth Olimpo.username, Olimpo.password
    debug_output $stdout
  end
end
