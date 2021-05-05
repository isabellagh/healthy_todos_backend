class TodoListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
end
