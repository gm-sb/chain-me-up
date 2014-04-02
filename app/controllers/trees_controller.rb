class TreesController < ApplicationController
  before_action :load_root, :only => [:show]
  before_action :authenticate_user!
  before_action :verify_can_view, :only => [:show]

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(get_tree_params)
    @tree.bind_user(current_user)    
    if @tree.save
      redirect_to '/', notice: "Your tree has been saved!"
    else
      render :new
    end
  end

  def index
    @trees = Tree.get_trees_by_user(current_user)
  end

  def show
    if created_by_user?
      @history = @tree.construct_history
      @branch = @tree
    else 
      @branch = @tree.find_branch_by_user(current_user.id.to_s)
      @history = @branch.construct_history
    end  

    respond_to do |format|
      format.html
      format.json { render json: @branch.get_all_children }
    end
  end

  private

  def get_tree_params
    params.require(:tree).permit(:title,:content)
  end

end
