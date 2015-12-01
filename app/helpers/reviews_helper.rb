module ReviewsHelper
  def cache_key_for_review(review)
    "review-index-#{review.id}-#{review.updated_at}"
   end
end
