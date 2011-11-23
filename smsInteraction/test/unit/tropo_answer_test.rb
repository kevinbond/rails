require 'test_helper'

class TropoAnswerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: tropo_answers
#
#  id                :integer         not null, primary key
#  tropo_session_id  :integer
#  tropo_question_id :integer
#  response          :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

