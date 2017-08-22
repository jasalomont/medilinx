class ClaimFollowsController < ApplicationController



  def index
    @claim_follows = ClaimFollow.all

    render("claim_follows/index.html.erb")
  end

  def show
    @claim_follow = ClaimFollow.find(params[:id])

    render("claim_follows/show.html.erb")
  end

  def new
    @claim_follow = ClaimFollow.new

    render("claim_follows/new.html.erb")
  end

  def create
    @claim_follow = ClaimFollow.new

    @claim_follow.patient_request = params[:patient_request]
    @claim_follow.doctor_start = params[:doctor_start]
    @claim_follow.doctor_sign = params[:doctor_sign]
    @claim_follow.insurance_read = params[:insurance_read]
    @claim_follow.insurance_approved = params[:insurance_approved]
    @claim_follow.insurance_comments = params[:insurance_comments]
    @claim_follow.claim_id = params[:claim_id]

    save_status = @claim_follow.save

    if save_status == true
      redirect_to("/claim_follows/#{@claim_follow.id}", :notice => "Claim follow created successfully.")
    else
      render("claim_follows/new.html.erb")
    end
  end

  def edit
    @claim_follow = ClaimFollow.find(params[:id])

    render("claim_follows/edit.html.erb")
  end

  def update
    @claim_follow = ClaimFollow.find(params[:id])

    @claim_follow.patient_request = params[:patient_request]
    @claim_follow.doctor_start = params[:doctor_start]
    @claim_follow.doctor_sign = params[:doctor_sign]
    @claim_follow.insurance_read = params[:insurance_read]
    @claim_follow.insurance_approved = params[:insurance_approved]
    @claim_follow.insurance_comments = params[:insurance_comments]
    @claim_follow.claim_id = params[:claim_id]

    save_status = @claim_follow.save

    if save_status == true
      redirect_to("/claim_follows/#{@claim_follow.id}", :notice => "Claim follow updated successfully.")
    else
      render("claim_follows/edit.html.erb")
    end
  end

  def approve

    @claim_follow = ClaimFollow.find(params[:id])


    render("claims/approveclaim.html.erb")
    # ,:layout=>false

  end

  def destroy
    @claim_follow = ClaimFollow.find(params[:id])

    @claim_follow.destroy

    if URI(request.referer).path == "/claim_follows/#{@claim_follow.id}"
      redirect_to("/", :notice => "Claim follow deleted.")
    else
      redirect_to(:back, :notice => "Claim follow deleted.")
    end
  end
end
