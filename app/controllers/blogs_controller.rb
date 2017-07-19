class BlogsController < ApplicationController
  def index
    @blogs = Blog.all

    render("blogs/index.html.erb")
  end

  def show
    @blog = Blog.find(params[:id])

    render("blogs/show.html.erb")
  end

  def new
    @blog = Blog.new

    render("blogs/new.html.erb")
  end

  def create
    @blog = Blog.new

    @blog.post_date = params[:post_date]
    @blog.post_content = params[:post_content]
    @blog.post_status = params[:post_status]
    @blog.post_type = params[:post_type]
    @blog.post_like_count = params[:post_like_count]
    @blog.post_comment_count = params[:post_comment_count]
    @blog.post_has_article = params[:post_has_article]
    @blog.article_title = params[:article_title]
    @blog.article_content = params[:article_content]
    @blog.article_references = params[:article_references]
    @blog.post_author = params[:post_author]
    @blog.author_id = params[:author_id]

    save_status = @blog.save

    if save_status == true
      redirect_to("/blogs/#{@blog.id}", :notice => "Blog created successfully.")
    else
      render("blogs/new.html.erb")
    end
  end

  def edit
    @blog = Blog.find(params[:id])

    render("blogs/edit.html.erb")
  end

  def update
    @blog = Blog.find(params[:id])

    @blog.post_date = params[:post_date]
    @blog.post_content = params[:post_content]
    @blog.post_status = params[:post_status]
    @blog.post_type = params[:post_type]
    @blog.post_like_count = params[:post_like_count]
    @blog.post_comment_count = params[:post_comment_count]
    @blog.post_has_article = params[:post_has_article]
    @blog.article_title = params[:article_title]
    @blog.article_content = params[:article_content]
    @blog.article_references = params[:article_references]
    @blog.post_author = params[:post_author]
    @blog.author_id = params[:author_id]

    save_status = @blog.save

    if save_status == true
      redirect_to("/blogs/#{@blog.id}", :notice => "Blog updated successfully.")
    else
      render("blogs/edit.html.erb")
    end
  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy

    if URI(request.referer).path == "/blogs/#{@blog.id}"
      redirect_to("/", :notice => "Blog deleted.")
    else
      redirect_to(:back, :notice => "Blog deleted.")
    end
  end
end
