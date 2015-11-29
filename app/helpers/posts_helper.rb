module PostsHelper
  def cache_key_for_post(post)
    "post-index-#{post.id}-#{post.updated_at}"
   end
end
