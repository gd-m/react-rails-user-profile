class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :fname, :lname , :bdate, :username

  belongs_to :user
end
