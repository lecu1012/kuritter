class SessionsController < ApplicationController
  def new
    #lauoutsをtop.html.erbで表示する
    render layout: 'top'
  end

  def create
    #Userテーブルからemailを取得
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      #user.emailにメールを送信
      UserMailer.user_mail(user).deliver
      #user.idをsessionに登録
      session[:user_id] = user.id
      #toppageへ移動
      redirect_to twitters_index_path
    else
      flash[:danger] = 'ログインに失敗しました'
      redirect_to twitters_index_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to twitters_index_path
  end
end
