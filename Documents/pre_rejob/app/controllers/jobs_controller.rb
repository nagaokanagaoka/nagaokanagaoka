class JobsController < ApplicationController
  #求人一覧
  def index
    @jobs = Job.order("id")
    @area_id = params[:Area_id]
  end

  #検索
  def search
    if params[:area].present?
      @jobs = Job.where(area: params[:area])
    else
      @jobs = Job.search(params[:q])
    end
    render "index"

  end

  #求人情報の詳細
  def show
    @job = Job.find(params[:id])
    if params[:format].in?(["jpg", "png", "gif"])
      send_image
    else
      render "/jobs/show"
    end
    @user = User.find_by(session[:id])
    @entry = JobsUser.where(job_id: params[:id])

  end

  def entry
    if session[:user_id].present?
      JobsUser.create(job_id: params[:job_id], user_id: session[:user_id])
      flash[:success] = "応募が完了しました!"
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:danger] = 'ログインしてください'
      redirect_to "/sessions/new"
    end
  end
  # 新規作成フォーム
  def new
    @job = Job.new
    @job.build_image
  end



  def create
    @job = Job.new(job_params)
    if @job.save
      @job.image_upload(params[:image]) if params[:image].present?
      redirect_to :admins, noticd: "新規求人を作成しました。"
    else
      render "new"
    end
  end

  def edit
    @job = Job.find(params[:id])
  end
  # 更新フォーム
  def edit
    @job = Job.find(params[:id])
    @job.build_image unless @job.image
  end

  def update
    # fail
    @job = Job.find(params[:id])
    if @job.update(job_params)
      @job.image_upload(params[:image]) if params[:image].present?
      redirect_to :admins, notice: "求人情報を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to :admins, notice: "求人を削除しました。"
  end

  private
  def job_params
    params.require(:job).permit(:upload_image, :title, :detail, :area)
  end

  # 画像送信
  def send_image
    if
      @job.image.present?
      send_data @job.image.data,
      type: @job.image.content_type, disposition: "inline"
    else
      raise NotFound
    end
  end
end
