class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :done
  has_one :user
  has_many :notes
end
