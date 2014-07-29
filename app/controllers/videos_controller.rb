class VideosController < ApplicationController

before_filter :authenticate_user!
before_filter :is_admin?

def is_admin?
  if current_user.admin?
    true
  else
    redirect_to :controller=>'dashboard', :action => 'index'
  end
end


  def index
    redirect_to :controller=>'admin', :action => 'index'
  end

  def show
    redirect_to :controller=>'admin', :action => 'videos'

  end

    def create
        @video = Video.new(video_params)

            respond_to do |format|
              if @video.save
                format.html { redirect_to @video, notice: 'Task was successfully created.' }
        #        format.json { render :show, status: :created, location: @video }
              else
                format.html { render :index }
         #       format.json { render json: @task.errors, status: :unprocessable_entity }
              end
            end
      end


  def update
      @video = Video.find(params[:id])
      respond_to do |format|
      if @video.update_attributes(video_params)
        format.html { redirect_to '/admin/', notice: 'Video was successfully updated.' }
       # format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :index }
      #  format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end

  end

 #Never trust parameters from the scary internet, only allow the white list through.
  def video_params
      params.require(:video).permit(:name, :description, :code)

    end


end
