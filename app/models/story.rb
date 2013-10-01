class Story
  include Mongoid::Document
  field :title, type: String
  field :point, type: Integer

  belongs_to :backlog
end