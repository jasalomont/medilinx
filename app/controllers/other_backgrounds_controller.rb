class OtherBackgroundsController < ApplicationController
  def index
    @other_backgrounds = OtherBackground.all

    render("other_backgrounds/index.html.erb")
  end

  def show
    @other_background = OtherBackground.find(params[:id])

    render("other_backgrounds/show.html.erb")
  end

  def new
    @other_background = OtherBackground.new

    render("other_backgrounds/new.html.erb")
  end

  def create
    @other_background = OtherBackground.new

    @other_background.patient_id = params[:patient_id]
    @other_background.perinatal = params[:perinatal]
    @other_background.other = params[:other]

    save_status = @other_background.save

    if save_status == true
      redirect_to("/other_backgrounds/#{@other_background.id}", :notice => "Other background created successfully.")
    else
      render("other_backgrounds/new.html.erb")
    end
  end

  def edit
    @other_background = OtherBackground.find(params[:id])

    render("other_backgrounds/edit.html.erb")
  end

  def update
    @other_background = OtherBackground.find(params[:id])

    @other_background.patient_id = params[:patient_id]
    @other_background.perinatal = params[:perinatal]
    @other_background.other = params[:other]

    save_status = @other_background.save

    if save_status == true
      redirect_to("/historial_medico", :notice => "updated successfully")
    else
      render("other_backgrounds/edit.html.erb")
    end
  end

  def destroy
    @other_background = OtherBackground.find(params[:id])

    @other_background.destroy

    if URI(request.referer).path == "/other_backgrounds/#{@other_background.id}"
      redirect_to("/", :notice => "Other background deleted.")
    else
      redirect_to(:back, :notice => "Other background deleted.")
    end
  end
end
