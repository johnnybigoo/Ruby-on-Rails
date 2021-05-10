module PostsHelper
	def post_format_partial_path
		current_page?(root_path) ? 'posts/post/home_page' : 'posts/post/branch_page'
	end

	def category_field_partial_path
    if params[:category].present?
      'posts/branch/search_form/category_field'
    else
      'shared/empty_partial'
    end
  end

	def update_pagination_partial_path
		if @posts.next_page
			'posts/posts_pagination_page/update_pagination'
		else
			'posts/posts_pagination_page/remove_pagination'
		end
	end

	def no_posts_partial_path(posts)
		posts.empty? ? 'posts/shared/no_posts' : 'shared/empty_partial'
	end
end
