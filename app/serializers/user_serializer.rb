class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :points, :club_card_number, :avatar, :created_at
  link(:self){ user_url(object) }
end