require "kribruby/version"
require "kribruby/config"
require "kribruby/request"

module Kribruby
  class NoSecretDefinedError < StandardError; end;
  class NoObjectIdDefinedError < StandardError; end;
end

Kribruby::Config.setup!

raise Kribruby::NoSecretDefinedError,
      'You must have object id defined in your KRBRB_OBJECT_ID environment variable' if Kribruby::Config[:secret].nil?
raise Kribruby::NoObjectIdDefinedError,
      'You must have secret defined in your KRBRB_SECRET environment variable' if Kribruby::Config[:object_id].nil?
