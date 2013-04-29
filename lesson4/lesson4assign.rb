class Book
    attr_accessor :year, :author, :page, :length
    
    def initialize(year, author, length)
        @year = year
        @author = author
        @length = length
        @page = 1
    end
        
    def readBook(page_num)
        if (@page + page_num) >= @length
            puts "Good job, you finished the book!"
            @page = @length
        else
            @page = @page + page_num
        end
    end
        
    def to_s
        "Year published: " + @year.to_s + "\n" +
        "Author: " + @author + "\n" +
        "Current Page: " + @page.to_s + "\n"
    end
end


class Textbook < Book
    
    def initialize(year, author, length, subject)
        super(year, author, length)
        @subject = subject
        @page = 1
    end
    
    def to_s
        super + "Subject: " + @subject
    end
end


text = Textbook.new(2012, "Chris Pine", 300, "Computer Programming")

puts text

puts "I'm reading my programming book!"

text.readBook(50)

puts text

text.readBook(280)

puts text






#HarryPotter = Book.new(2002, "J.K. Rowling", 300)

#puts HarryPotter

#puts "I'm reading Harry Potter!"

#HarryPotter.readBook(100)

#puts HarryPotter

#puts "I'm reading more, I love this book!"

#HarryPotter.readBook(200)

#puts HarryPotter

    