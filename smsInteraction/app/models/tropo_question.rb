class TropoQuestion < ActiveRecord::Base
  DEFAULT_TIMEOUT = 3600
  DEFAULT_ATTEMPTS = 3

  has_many :tropo_answers

  def self.create_with_defaults(name, text, additional_attributes = {})
    create(additional_attributes.merge(:name => name,
                                       :question_text => text,
                                       :invalid_message => "  #{additional_attributes[:invalid_message] || ''}",
                                       :timeout => DEFAULT_TIMEOUT,
                                       :attempts => DEFAULT_ATTEMPTS))
  end

  #Make sure that system commands are present in questions with a defined set of choices.
  def ask(generator)
    allowed_choices = valid_choices == '[ANY]' ? valid_choices : (valid_choices.split(',') + TropoController::COMMANDS.keys.flatten).join(',')
    generator.ask :name => name,
                  :attempts => attempts,
                  :choices => {:value => allowed_choices},
                  :say => [{:event => 'nomatch', :value => invalid_message},
                           {:value => question_text}]
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

