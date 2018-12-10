require_relative '../spec_helper'

describe 'Homepage navigation' do
  before(:each) do
    @driver = Homepage.new
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'displays the page title' do
    title = @driver.get_title
    expect(title).to eq("The Internet")
  end
end