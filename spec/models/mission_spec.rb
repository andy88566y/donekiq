require 'rails_helper'

RSpec.describe Mission, type: :model do
  it { expect validate_presence_of :title }
  it { expect validate_presence_of :end_time }
  it { expect validate_inclusion_of(:priority).in_array(["Urgent", "Medium", "Low"]) }
  it "validates presence of title" do
    mission = Mission.new()
    mission.valid?
    expect(mission.errors[:title]).to include("can't be blank")
  end
end
