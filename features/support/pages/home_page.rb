class HomePage
    include Capybara::DSL

    def go
        visit "/"
    end

    def open_form
        find('a[href="/deliver"]').click
    end


end  