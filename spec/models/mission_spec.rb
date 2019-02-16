require 'rails_helper'

RSpec.describe Mission, type: :model do
  it { expect validate_presence_of :title }
  it { expect validate_presence_of :end_time }
  it { expect validate_inclusion_of(:priority).in_array(["Urgent", "Medium", "Low"]) }
  it "validates presence of title" do
    mission = Mission.new()
    mission.valid?
    expect(mission.errors[:title]).to include("不能為空白")
  end

  describe "default scope" do
    let!(:mission_one) {Mission.create(title: "1", end_time: 1.minute.ago, priority: "Low")}
    let!(:mission_two) {Mission.create(title: "2", end_time: 2.minute.ago, priority: "Low")}

    it 'order by created_at desc' do
      expect(Mission.all).to eq [mission_two, mission_one]
    end
  end
end
