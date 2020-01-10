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
    raw = []
    listArray = list.split(/[\s,']/)
    listArray.each { |email|
      if email.length > 0
        raw << email
      end
    }
    p raw
  end

end
