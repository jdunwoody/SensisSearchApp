# == Schema Information
#
# Table name: searches
#
#  id         :integer         not null, primary key
#  query      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Search < ActiveRecord::Base
end
