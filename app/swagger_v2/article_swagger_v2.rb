class ArticleSwaggerV2
  include Swagger::Blocks

  swagger_schema :Article do
    key :required, [:id]
    property :id do
      key :type, :integer
    end
    property :title do
      key :type, :string
      key :description, '标题'
    end
    property :text do
      key :type, :string
      key :description, '正文'
    end
  end
end
