module ApiTaster
  module Load
    mattr_accessor :global_params
    self.global_params = {}

    mattr_accessor :route_path
    self.route_path = "#{Rails.root}/lib/api_tasters"

    def self.routes(&block)
      ApiTaster::RouteCollector.routes << block
    end

    class Exception < ::Exception; end
  end
end
