class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :startTime, :endTime, :category, :location, :comments

  # has_many :comments
end
