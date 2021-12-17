class TeamSerializer < ActiveModel::Serializer
  attributes :id, :teamname, :city, :conference, :abbreviation
end
