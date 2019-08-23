require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
end
