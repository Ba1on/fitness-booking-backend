require 'rails_helper'

RSpec.describe "RoomSlots", type: :request do
  describe "GET /room_slots" do
    it "works! (now write some real specs)" do
      get room_slots_path
      expect(response).to have_http_status(200)
    end
  end
end
