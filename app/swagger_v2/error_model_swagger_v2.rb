module ErrorModelSwaggerV2
  include Swagger::Blocks

  swagger_schema :ErrorModel do
    key :description, '错误定义'
    key :required, [:code, :message]
    property :code do
      key :type, :integer
      key :format, :int64
      key :description, '错误代码. 401 没有登录, 403 没有权限, 422 表单数据有误'
    end
    property :message do
      key :type, :string
      key :description, '错误消息'
    end
    property :errors do
      key :type, :object
      key :description, '错误详情. 键为出错的属性名.值为出错信息,值是字符串数组.'
    end
  end

end
