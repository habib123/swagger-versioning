class ArticlesControllerSwaggerV2
  include Swagger::Blocks

  swagger_path '/articles' do
	operation :get do
	  key :description, 'article list V2'
	  key :operationId, 'articleIndex V2'
	  key :tags, [
		'article'
	  ]
	  response 200 do
  		key :description, 'article response'
  		schema do
  		  key :type, :array
  		  items do
  			key :'$ref', :Article
  		  end
  		end
	  end
	  response :default do
  		key :description, 'unexpected error'
  		schema do
  		  key :'$ref', :ErrorModel
  		end
	  end
	end
	operation :post do
	  key :description, 'create article'
	  key :operationId, 'articleCreate'
	  key :tags, [
		'article'
	  ]
	  parameter do
  		key :name, :article
  		key :in, :body
  		key :required, true
  		schema do
  		  key :'$ref', :Article
  		end
	  end
	  response 200 do
  		key :description, 'article response'
  		schema do
  		  key :'$ref', :Article
  		end
	  end
	  response :default do
  		key :description, 'unexpected error'
  		schema do
  		  key :'$ref', :ErrorModel
  		end
	  end
	end
  end

  swagger_path '/articles/{id}' do
	operation :get do
	  key :description, 'article show'
	  key :operationId, 'articleShow'
	  key :tags, [
		'article'
	  ]
      parameter do
        key :name, :id
        key :in, :path
        key :required, true
        key :type, :integer
      end
	  response 200 do
		key :description, 'article response'
		schema do
          key :'$ref', :Article
		end
	  end
	  response :default do
		key :description, 'unexpected error'
		schema do
		  key :'$ref', :ErrorModel
		end
	  end
	end
	operation :patch do
	  key :description, 'article update'
	  key :operationId, 'articleUpdate'
	  key :tags, [
		'article'
	  ]
      parameter do
        key :name, :id
        key :in, :path
        key :required, true
        key :type, :integer
      end
	  parameter do
		key :name, :article
		key :in, :body
		key :required, true
		schema do
		  key :'$ref', :Article
		end
	  end
	  response 200 do
		key :description, 'article response'
		schema do
          key :'$ref', :Article
		end
	  end
	  response :default do
		key :description, 'unexpected error'
		schema do
		  key :'$ref', :ErrorModel
		end
	  end
	end
	operation :delete do
	  key :description, 'article destroy'
	  key :operationId, 'articleDestroy'
	  key :tags, [
		'article'
	  ]
      parameter do
        key :name, :id
        key :in, :path
        key :required, true
        key :type, :integer
      end
	  response 204 do
		schema do
		  key :type, :string
		end
	  end
	  response :default do
		key :description, 'unexpected error'
		schema do
		  key :'$ref', :ErrorModel
		end
	  end
	end
  end
end
