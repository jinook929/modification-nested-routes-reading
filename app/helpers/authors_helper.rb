module AuthorsHelper
  def display_post_author(post)
    post.author.blank? ? ("unknown") : (link_to post.author.name, author_posts_path(post.author))
  end
end
