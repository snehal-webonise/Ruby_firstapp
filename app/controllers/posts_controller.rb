class PostsController < ApplicationController
  def index
  end

  def myform
    @post = Post.new

    respond_to do |format|
      format.html # myform.html.erb
      format.json { render :json => @post }
    end

  end

  def mycreate
    @mydata = Post.create_new_entry(params[:post])
    respond_to do |format|
      format.html { redirect_to mydatalist_posts_path, :notice => 'User was successfully created.' }
    end
  end

  def myshowdata
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html # myshowdata.html.erb
    end
  end

  def mydatalist
    @post =  Post.paginate(:page => params[:page], :per_page => 10)
  end

  def myedit
    @post = Post.find(params[:id])
  end

  def mydelete
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.html { redirect_to mydatalist_posts_path }
      end
  end


def myupdate
  @post = Post.find(params[:id])
  respond_to do |format|
    if @post.update_attributes(params[:post])
      format.html { redirect_to mydatalist_posts_path, :notice => 'Post was successfully updated.' }
    end
    end
end
end
