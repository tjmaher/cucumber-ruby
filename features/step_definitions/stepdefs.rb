require 'bigdecimal'

Given("the values table is displayed") do
  visit ''
  expect(page).to have_selector('#values')
end

When("I store the values in a list") do
  @values = Array.new
  @values << find('#txt_val_1').text
  @values << find('#txt_val_2').text
  @values << find('#txt_val_3').text
  @values << find('#txt_val_4').text
  @values << find('#txt_val_5').text
  puts @values
end

And("I grab the balance") do
  @balance = find('#txt_ttl_val').text
  puts @balance
end

Then("I should find {string} values") do |string|
  expect(@values.size).to eq(string.to_i)
end

Then ("I should verify all values are greater than zero") do
  @values.each do |value|
    value.to_s.tr!('$,','')
    expect(value.to_f).to be > 0
  end
end

Then ("I should find the value sum equals the balance") do
  sum = BigDecimal.new(0)
  @values.each do |value|
    sum+=BigDecimal.new(value.to_s.tr!('$,',''))
  end
  expect(sum).to eq(BigDecimal.new(@balance.to_s.tr!('$,','')))
end

Then ("I should find all values are in USD format") do
  usd_regex = "^[$]?[0-9]{1,3}(?:,?[0-9]{3})*\.[0-9]{2}$"
  @values.each do |value|
    value.to_s
    expect(value).to match(usd_regex)
  end
end
