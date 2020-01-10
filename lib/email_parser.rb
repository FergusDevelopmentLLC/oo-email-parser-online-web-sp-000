# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def parse
    listArray = list.split(/[\s,']/)
    list = []
    listArray.each { |email|
      if email.length > 0 && !list.include?(email)
        list << email
      end
    }
    p list

  end

end

# p = EmailAddressParser.new("avi@test.com arel@test.com")
# p.parse

emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
p = EmailAddressParser.new(emails)
p.parse
