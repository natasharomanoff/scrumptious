class Backlog
  include Mongoid::Document
  field :title, type: String

  has_many :stories
  has_many :epics
  embedded_in :project
end
