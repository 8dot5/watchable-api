class WatchableSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :summary, :poster_url, :trailer_url, :favorite, :category_id, :service_id, :user_id

  belongs_to :category
  belongs_to :service
end
