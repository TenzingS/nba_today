class PlayerstatSerializer < ActiveModel::Serializer
  attributes :id, :points, :rebounds, :assists, :steals, :blocks, :fg, :threept, :ft
  belongs_to :player
end
