class Question < ApplicationRecord
  enum choice:    [ :yes, :no ]
end
