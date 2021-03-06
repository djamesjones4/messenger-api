class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :update, :destroy]

  # GET /conversations
  def index
    @conversations = Conversation.all

    render json: @conversations
  end

  # GET /conversations/1
  def show
    render json: @conversation
  end

  # POST /conversations
  def create
    #if conversation exists load existing conversation and use existing conversation_id for Message.new params
    @existing = Conversation.where(participants: conversation_params[:participants])
    if @existing.length() > 0
      render json: @existing
    else
      @conversation = Conversation.new(conversation_params)
      if @conversation.save
        render json: @conversation, status: :created, location: @conversation
      else
        render json: @conversation.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /conversations/1
  def update
    if @conversation.update(conversation_params)
      render json: @conversation
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /conversations/1
  def destroy
    @conversation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversation
      @conversation = Conversation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conversation_params
      params.permit(:participants, participants: [])
    end
end
