class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :post
  # belongs_to :post
  # belongs_to :user

  def post
    object.post.id
  end
end
