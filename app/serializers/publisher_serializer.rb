class PublisherSerializer < ApplicationSerializer
  has_many :circulations
  has_many :references
  has_many :periodicals

  attributes :id, :name, :created_at, :updated_at
end
