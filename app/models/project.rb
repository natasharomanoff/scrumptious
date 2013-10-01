class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String

  embeds_one :backlog

  after_create do |d|
    d.create_backlog :title => "#{d.name} - Backlog"
  end
end
