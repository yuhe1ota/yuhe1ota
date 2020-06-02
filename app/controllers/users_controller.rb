class UsersController < ApplicationController
  #ログイン関連
  def sign_up
    @user = User.new
    render :layout => "noheader"
  end
  
  def account_create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "登録しました"
      redirect_to top_path and return
    else
      flash[:danger] = "登録できませんでした"
      redirect_to ... and return
    end
  end
  
  def sign_in
    render :application => nil
  end
  #プロフィール関連
  def top
    render 'profile'
  end
  def profile_edit
    render 'profile_edit'
  end
  #商品関連
  def products
  end
  def product_list
  end
  def new_product
    render 'new_product'
  end
  def edit_product
    render 'edit_product'
  end
  def likes
  end
  
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
