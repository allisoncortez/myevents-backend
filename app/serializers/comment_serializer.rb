class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :event_id
end
