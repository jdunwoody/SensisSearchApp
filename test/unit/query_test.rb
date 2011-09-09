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

require 'test_helper'

class QueryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
