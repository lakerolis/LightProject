class Action < ActiveRecord::Base
  belongs_to :rule
  belongs_to :actor
end
