class InvitationsController < ApplicationController
  # before_action :set_invitation, only: %i[ show edit update destroy ]

  # GET /invitations or /invitations.json
  def index
    @invitations = Invitation.all
  end

  # GET /invitations/1 or /invitations/1.json
  def show
  end

  # GET /invitations/new
  def new
    @invitation = Invitation.new
  end

  # GET /invitations/1/edit
  def edit
  end

  # POST /invitations or /invitations.json
  def create
    event = Event.find(params[:event_id])
    @invitation = Invitation.new(event_id: event.id, invitee_id: current_user.id)

    respond_to do |format|
      if @invitation.save
        format.html { redirect_to event_path(event), notice: "RSVP successful!" }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { redirect_to event_path(event), notice: "RSVP FAILED!" }
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invitations/1 or /invitations/1.json
  def update
    respond_to do |format|
      if @invitation.update(invitation_params)
        format.html { redirect_to @invitation, notice: "Invitation was successfully updated." }
        format.json { render :show, status: :ok, location: @invitation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invitations/1 or /invitations/1.json
  def destroy
    event = Event.find(params[:event_id])
    @invitation = Invitation.find(params[event_id: @event.id, invitee_id: invitation.invitee.id ])
    @invitation.destroy
    respond_to do |format|
      format.html { redirect_to invitations_url, notice: "Invitation was successfully destroyed." }
      format.json { head :no_content }
    end
  end
end
