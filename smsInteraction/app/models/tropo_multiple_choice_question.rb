class TropoMultipleChoiceQuestion < TropoQuestion
  def self.create_with_defaults(name, choices)
    super(name, choices.map {|c| "#{choices.index(c) + 1}: #{c}"}.join(';  '), :valid_choices => (1..choices.size).to_a.join(','), :invalid_message => "I didn't understand that.  Please answer using a number between 1 and #{choices.size}.")
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

