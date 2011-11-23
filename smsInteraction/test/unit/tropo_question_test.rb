require 'test_helper'

class TropoQuestionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: tropo_questions
#
#  id              :integer         not null, primary key
#  question_text   :string(255)
#  valid_choices   :string(255)
#  invalid_message :string(255)
#  timeout         :integer
#  attempts        :integer
#  name            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  type            :string(255)
#

