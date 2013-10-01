class Backlog
  include Mongoid::Document
  field :title, type: String

  has_many :stories
  embedded_in :project
end
