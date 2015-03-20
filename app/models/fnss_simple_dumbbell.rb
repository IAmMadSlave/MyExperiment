class FnssSimpleDumbbell < ActiveRecord::Base
  belongs_to :generator
  belongs_to :type
  belongs_to :user
  belongs_to :generate_form
end
