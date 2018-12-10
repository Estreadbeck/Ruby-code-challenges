class Draganddrop < Baseclass

  def initialize
    super
    @drag_and_drop_url = "http://the-internet.herokuapp.com/drag_and_drop"
  end

  def goto()
    setup(@drag_and_drop_url)
  end

  def drag_and_drop_elements
    source = locate_element(id: 'column-a')
    target = locate_element(id: 'column-b')

    @driver.action.drag_and_drop(source, target).perform
    sleep 5
    puts "#{target.text}"
    return true
  end
end