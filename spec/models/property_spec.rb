require 'rails_helper'

RSpec.describe Property, type: :model do
  describe 'Required attributes' do
    it { should validate_presence_of(:type).
      with_message("Type no debe ser vacío.") }
    it { should validate_presence_of(:title).
      with_message("Title no debe ser vacío.") }
    it { should validate_presence_of(:address).
      with_message("Address no debe ser vacío.") }
    it { should validate_presence_of(:zipcode).
      with_message("Zipcode no debe ser vacío.") }
    it { should validate_presence_of(:country).
      with_message("Country no debe ser vacío.") }
  end

  describe 'Attributes format' do
    it { should define_enum_for(:type).with([:house, :department]) }

    it do
      should validate_length_of(:title).
      is_at_least(15).is_at_most(45).
      with_message("Title debe contener entre 15 y 45 caracteres.")
    end

    it do
      should validate_length_of(:address).is_at_least(30).is_at_most(140).
      with_message("Address debe contener entre 30 y 140 caracteres.")
    end

    it do
      should validate_length_of(:zipcode).is_equal_to(5).
      with_message("Zipcode debe contener exactamente 5 caracteres.")
    end

    it { should allow_values('10000', '99999').for(:zipcode) }

    it do
      should_not allow_values('00100', '00000').for(:zipcode).
      with_message("Zipcode formato invalido.")
    end

    it do
      should validate_length_of(:country).is_equal_to(2).
      with_message("Country debe contener exactamente 2 caracteres.")
    end

    it { should allow_values('mx', 'us', 'ca').for(:country) }

    it do
      should_not allow_values('ar', 'uz', 'cd').for(:country).
      with_message("Country solo acepta los valores: mx, us y ca.")
    end

     it do
       should validate_length_of(:notes).is_at_most(300).
       with_message("Notes debe contener máximo de 300 caracteres.")
     end
  end
end
