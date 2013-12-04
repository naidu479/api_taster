module ApiTaster
  class ApplicationController < ActionController::Base
    layout proc { |controller| controller.request.xhr? ? nil : 'api_taster/application' }

    before_filter :reload_routes

    private

    def laod_layout
      raise controller.action_name.inspect
      if controller.request.xhr? || controller.action_name == "show"
        nil
      else
        'api_taster/application'
      end
    end
    def reload_routes
      load Rails.application.root.join('config/routes.rb')
    end
  end
end
