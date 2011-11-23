require 'test_helper'

class TropoMessageTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end



# == Schema Information
#
# Table name: tropo_messages
#
#  id               :integer         not null, primary key
#  channel          :string(255)
#  network          :string(255)
#  from             :string(255)
#  to               :string(255)
#  message          :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  tropo_session_id :string(255)
#

