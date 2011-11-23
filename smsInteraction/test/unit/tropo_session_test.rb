require 'test_helper'

class TropoSessionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: tropo_sessions
#
#  id         :integer         not null, primary key
#  session_id :string(255)
#  network    :string(255)
#  username   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

