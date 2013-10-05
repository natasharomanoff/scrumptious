class Epic
  include Mongoid::Document
  field :title, type: String
  field :description, type: String

  belongs_to :backlog
end