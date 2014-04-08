class FeedStudent < ActiveRecord::Base
  attr_accessible :feed_id, :student_id
  belongs_to :feed
  belongs_to :student
end
