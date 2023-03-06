class ClothSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :size, :image_url, :price
end
