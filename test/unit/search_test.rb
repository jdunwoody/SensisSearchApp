# == Schema Information
#
# Table name: searches
#
#  id         :integer         not null, primary key
#  query      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SearchTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
