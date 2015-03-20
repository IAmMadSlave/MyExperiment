class BriteRtBarabasi < ActiveRecord::Base
  belongs_to :generator
  belongs_to :type
  belongs_to :user
  belongs_to :generator_form
end
