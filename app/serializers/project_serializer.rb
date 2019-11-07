class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :details
  has_one :user
end
