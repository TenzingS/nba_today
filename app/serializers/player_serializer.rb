class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :playername, :position, :teamname
  belongs_to :team
  has_one :player_stat
end
