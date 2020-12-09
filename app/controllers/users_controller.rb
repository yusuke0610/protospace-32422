class UsersController < ApplicationController
  def show
    @user = Prototype.find(params[:id])
    @prototypes = Prototype.all
  end

  

end
