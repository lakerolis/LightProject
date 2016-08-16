class Rule < ActiveRecord::Base
  belongs_to :sensor
  belongs_to :condition
  belongs_to :action
end
