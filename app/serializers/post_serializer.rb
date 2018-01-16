class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id, :editable
  def editable
    scope == object.user
  end
end
