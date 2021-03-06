class ApidocsV2Controller < ApplicationController
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'
    info do
      key :version, '1.0.0'
      key :title, 'Swagger Petstore'
      key :description, 'A sample API that uses a petstore as an example to ' \
        'demonstrate features in the swagger-2.0 specification'
      key :termsOfService, 'http://helloreverb.com/terms/'
      contact do
        key :name, 'OraMetrix Team'
      end
      license do
        key :name, 'MIT'
      end
    end
    tag do
      key :name, 'pet'
      key :description, 'Pets operations'
      externalDocs do
        key :description, 'Find more info here'
        key :url, 'https://swagger.io'
      end
    end
    key :host, 'localhost:3000'
    key :basePath, '/'
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end

  # A list of all classes that have swagger_* declarations.
  SWAGGERED_CLASSES = [
    ArticleSwaggerV2,
    ErrorModelSwaggerV2,
    ArticlesControllerSwaggerV2,
    self,
  ].freeze

  def index
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
