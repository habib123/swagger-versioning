# config/initializers/swagger_ui_engine.rb

SwaggerUiEngine.configure do |config|
  config.admin_username = 'admin'
  config.admin_password = 'admin'
  config.swagger_url = {
    v1: '/apidocs',
    v2: '/apidocs_v2'
  }
end
