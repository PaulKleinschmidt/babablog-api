class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id, :editable, :comments
  def editable
    scope == object.user
  end

  def comments
    object.comments.pluck(:id)
  end
end
