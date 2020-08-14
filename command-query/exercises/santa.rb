class Santa
  def initialize
    @fits = true
    @cookies_eaten = 0
  end

  def fits?
    if @cookies_eaten < 3
      @fits = true
    elsif @cookies_eaten >= 3
      @fits = false
    end
  end

  def eats_cookies
    @cookies_eaten += 1
  end
end
