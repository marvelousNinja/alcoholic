# Be sure to restart your server when you modify this file.
#
# This file contains settings for ActionController::ParamsWrapper

# Enable parameter wrapping for JSON.
ActiveSupport.on_load(:action_controller) do
  include ActionController::ParamsWrapper
  wrap_parameters format: :json
end

# To enable root element in JSON for ActiveRecord objects.
ActiveSupport.on_load(:active_record) do
  self.include_root_in_json = false
end
