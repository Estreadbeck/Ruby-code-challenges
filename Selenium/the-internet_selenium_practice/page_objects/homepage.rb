class Homepage < Baseclass

  def initialize
    super
    @homepage_url = "http://the-internet.herokuapp.com/"
  end

  def goto()
      setup(@homepage_url)
  end

end