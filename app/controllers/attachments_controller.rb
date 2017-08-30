class AttachmentsController < ApplicationController
  def index
    @attachments = Attachment.all
  end

  def new
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.new(attachment_params)

    if @attachment.save
      redirect_to attachments_path, notice: "El archivo #{@attachment.name} se ha agregado exitosamente."
    else
      render "new"
    end

  end

  def destroy
    @attachment = Attachment.find(params[:id])
    @attachment.destroy
    redirect_to attachments_path, notice:  "El archivo #{@attachment.name} se ha eliminado."
  end

  private
  def attachment_params
    params.require(:attachment).permit(:name, :attachment)
    params.require(:attachment).permit(:claim_id, :attachment)
    params.require(:attachment).permit(:type, :attachment)
  end

  def show

    @attachments = Attachment.all

    render("attachments/show.html.erb")

  end

end
