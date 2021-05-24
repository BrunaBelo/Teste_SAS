class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: %i[ show ]
  before_action :user_roles, only: %i[ new ]

  #constants
  ROLES = [['Admin', :admin], ['Funcionário Marketing', :employee_marketing]].freeze

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    @user.add_role(@user.type_role)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: "User was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_roles
      @user_roles = ROLES
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :type_role)
    end
end
