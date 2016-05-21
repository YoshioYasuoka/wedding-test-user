class SessionsController < ApplicationController

  def new

  end

  def create
    the_user = User.find_by(email: params[:email])
    if the_user.present?
      if the_user.authenticate(params[:password])
        session[:user_id] = the_user.id
        flash[:notice] = "こんにちは、" + the_user.name + "さん" 
        redirect_to "/"
      else
        flash[:notice] = "メールアドレスとパスワードが一致しません。"
        redirect_to "/sessions/new"
      end
    else
      flash[:notice] = "このメールアドレスは登録されていません。"
      redirect_to "/sessions/new"
    end

  end

  def destroy
    session[:user_id] = nil   # or reset_session
    flash[:notice] = "ログアウトしました。"
    redirect_to "/"
  end

end
