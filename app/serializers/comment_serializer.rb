class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :post, :user_id, :editable

  def editable
    scope == object.user
  end

  def post
    object.post.id
  end
end
