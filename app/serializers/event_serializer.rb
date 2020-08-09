class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :startTime, :endTime, :category, :location #:comments

  #codebloat
  # has_many :comments
end
