class TreesController < ApplicationController
  before_action :load_root, :only => [:show]
  before_action :authenticate_user!
  before_action :verify_can_view, :only => [:show]

  def new
    @tree = Tree.new
    @prompt = Prompt.random_sample(5).collect do |prompt|
      prompt.content
    end
  end

  def create
    
    @tree = Tree.new(get_tree_params)
    @tree.bind_user(current_user)
    @tree.save
    @branch = @tree
    @trees = Tree.get_trees_by_user(current_user)
    respond_to do |format|
      format.html { redirect_to '/trees', notice: "Your tree has been saved!" }
      format.js
    end
  end

  def index
    @trees = Tree.get_trees_by_user(current_user)
  end

  def show
    if created_by_user?
      @history = @tree.history
      @branch = @tree

    # elsif params[:current_branch]
    #   if params[:current_branch] == @tree.id.to_s
    #     binding.pry
    #   else
    #     @branch = @tree.find_branch_by(:id => params[:current_branch])
    #   end  
    else  
      @branch = @tree.find_branch_by(:user_id => current_user.id.to_s)
      @history = @branch.history
    end  

    @current_branch = params[:current_branch] || @branch.id.to_s

    respond_to do |format|
      format.html
      format.json { render json: @branch.get_all_children(@current_branch) }
    end
  end

  private

  def get_tree_params
    params.require(:tree).permit(:title,:content)
  end

end