# == Schema Information
#
# Table name: queries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  query      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  location   :string(255)
#

class Query < ActiveRecord::Base
  def execute

  end
end
