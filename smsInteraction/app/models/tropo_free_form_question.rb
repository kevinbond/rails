class TropoFreeFormQuestion < TropoQuestion
  def self.create_with_defaults(name, text)
    super(name, text, :valid_choices => '[ANY]', :invalid_message => '')
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

