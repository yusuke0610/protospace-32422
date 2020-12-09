class PrototypesController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_index
  def index
   @prototypes = Prototype.all
  
  end

  def new
    @prototype = Prototype.new
  end
  
  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    # ログイン状態のユーザーに限り、自身の投稿したプロトタイプの詳細ページから削除ボタンをクリックすると、プロトタイプを削除できること
    @prototype = Prototype.find(params[:id])
    if @prototype.destroy
       redirect_to root_path
    else
       render :show
    end
  end
 
  def show
    @prototype = Prototype.find(params[:id])
    @comment = Comment.new
    @comments = @prototype.comments
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to  prototype_path
    else
      render :edit
  end
  

end
  
 private
  def prototype_params
    params.require(:prototype).permit(:title,:image,:catch_copy,:concept).merge(user_id: current_user.id)
  end
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end