class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id, :editable, :comments, :like_id, :likes
  def editable
    scope == object.user
  end

  def comments
    object.comments.pluck(:id)
  end

  def likes
    object.likes.pluck(:id)
  end
end
