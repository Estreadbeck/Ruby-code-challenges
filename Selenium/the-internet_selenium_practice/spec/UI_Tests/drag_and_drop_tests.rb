require_relative '../spec_helper'

describe 'drag-and-drop functionality' do
  before(:each) do
    @driver = Draganddrop.new
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'can drag and drop columns' do
    move_a_to_b = @driver.drag_and_drop_elements
    expect(move_a_to_b).to eq(true)
  end
end