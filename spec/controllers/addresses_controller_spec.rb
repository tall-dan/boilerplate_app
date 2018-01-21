describe AddressesController do
  describe '#new' do
    let(:varchar) { 'character varying' }
    let(:expected_inputs) do
      [{ name: 'building_number', type: varchar },
       { name: 'apt_or_unit_number', type: varchar },
       { name: 'street', type: varchar },
       { name: 'city', type: varchar },
       { name: 'state', type: varchar },
       { name: 'zip_code', type: varchar }]
    end

    it 'assigns the inputs needed to create an address' do
      get(:new)
      expect(assigns(:inputs)).to eq expected_inputs
    end
  end

  describe '#create' do
    let(:address_attributes) { build(:address).attributes }

    it 'requires address attributes to be grouped together' do
      expect { post(:create, params: address_attributes) }.to raise_error(ActionController::ParameterMissing)
    end

    it 'creates a new address' do
      expect { post(:create, params: { address: address_attributes }) }.to change { Address.count }.by(1)
    end
  end

  describe '#index' do
    let!(:address) { create(:address) }
    before { get(:index) }

    it 'assigns all addrseses' do
      actual_addresses = assigns(:addresses)
      expect(actual_addresses.size).to eq 1
      expect(actual_addresses).to include(address)
    end
  end
end
