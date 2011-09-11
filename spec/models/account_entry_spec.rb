require 'spec_helper'

describe AccountEntry do
  it { should belong_to(:user) }

  describe "When adding a new entry" do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:amount) }
    it { should ensure_length_of(:description).is_at_least(1) }
    it { should validate_numericality_of(:amount) }
  end

end