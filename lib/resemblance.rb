require "resemblance/version"
require "resemblance/shingling"
require "resemblance/sim_hash"

module Resemblance
  include Shingling
  include SimHash
end
