class CookieBag

MAX_COOKIE_COUNT = 5

    def initialize
      @cookies = []
    end

    def add(cookie)
      if @cookies.length >= MAX_COOKIE_COUNT #Constant
        puts "Too many cookies!"
      else
        @cookies.push(cookie)
    end

    def remove
      @cookies.pop
    end

    def number_of_cookies
      @cookies.length
    end
end
