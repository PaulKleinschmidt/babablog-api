class LikeSerializer < ActiveModel::Serializer
  attributes :id, :editable, :post, :user

  # def post
  #   object.post.id
  # end

  def editable
    scope == object.user
  end

  def user
    object.user.id
  end

  def post
    object.post.id
  end
end
