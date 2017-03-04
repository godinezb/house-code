require 'rails_helper'

RSpec.describe Property, type: :model do
  describe 'Required attributes' do
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:zipcode) }
    it { should validate_presence_of(:country) }
  end

  describe 'Attributes format' do
    it { should define_enum_for(:type).with([:house, :department]) }

    it { should validate_length_of(:title).is_at_least(15).is_at_most(45) }

    it { should validate_length_of(:address).is_at_least(30).is_at_most(140) }

    it { should validate_length_of(:zipcode).is_equal_to(5) }

    it { should allow_values('10000', '99999').for(:zipcode) }
    it { should_not allow_values('100', '00000', '100000').for(:zipcode) }

    it { should allow_values('mx', 'us', 'ca').for(:country) }
    it { should_not allow_values('ar', 'usa', 'canada').for(:country) }

     it { should validate_length_of(:notes).is_at_most(300) }
  end
end
