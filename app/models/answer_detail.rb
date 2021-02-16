class AnswerDetail < ApplicationRecord
  enum choice: { yes: 0, no: 1 }

  belongs_to :question
  belongs_to :answer
end
