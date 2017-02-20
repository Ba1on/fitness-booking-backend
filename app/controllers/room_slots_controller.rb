class RoomSlotsController < ApplicationController
  before_action :set_room_slot, only: [:show, :update, :destroy]

  # GET /room_slots
  def index
    @room_slots = RoomSlot.all

    render json: @room_slots
  end

  # GET /room_slots/1
  def show
    render json: @room_slot
  end

  # POST /room_slots
  def create
    @room_slot = RoomSlot.new(room_slot_params)

    if @room_slot.save
      render json: @room_slot, status: :created, location: @room_slot
    else
      render json: @room_slot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /room_slots/1
  def update
    if @room_slot.update(room_slot_params)
      render json: @room_slot
    else
      render json: @room_slot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /room_slots/1
  def destroy
    @room_slot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_slot
      @room_slot = RoomSlot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_slot_params
      params.fetch(:room_slot, {})
    end
end
