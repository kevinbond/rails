class TropoAnswer < ActiveRecord::Base
  belongs_to :tropo_question
  belongs_to :tropo_session
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

