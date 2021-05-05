class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes, :completed, :todo_list_id, :todo_list
end
