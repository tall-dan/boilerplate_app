When('I enter a new address') do
  @address_attributes = build(:address, :with_apt_number).attributes.except('created_at', 'updated_at', 'id')
  @address_attributes.each do |property, value|
    fill_in "address[#{property}]", with: value
  end
  page.find('input[type=submit]').click
end

Then('the address will be persisted') do
  expect(Address.find_by(@address_attributes)).to_not be_nil
end

Then('I will be shown a list of all addresses') do
  address_values = Address.all.flat_map do |address|
    address.attributes.except('created_at', 'updated_at').values.map(&:to_s)
  end
  page_values = page.find_all('input').map(&:value)
  expect(address_values - page_values).to be_empty
end

Given('there are addresses in the system') do
  @addresses = create_list(:address, 2, :with_apt_number)
end
