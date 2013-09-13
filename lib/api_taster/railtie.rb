module ApiTaster
  class Railtie < Rails::Railtie
    initializer 'api_taster.controller_additions' do
      ActiveSupport.on_load :action_controller do
        require 'api_taster/load'
        include ApiTaster::Load
      end
    end
  end
end
