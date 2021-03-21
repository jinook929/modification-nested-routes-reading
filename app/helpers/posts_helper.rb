module PostsHelper
  def author_id_field(post, f)
    if post.author.nil?
      f.select "author_id", options_from_collection_for_select(Author.all, :id, :name), include_blank: "Select Author"
    else
      f.hidden_field "author_id"
    end
  end
end
