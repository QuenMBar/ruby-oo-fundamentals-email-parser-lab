# frozen_string_literal: true
# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# Parses emails
class EmailAddressParser
    attr_accessor(:emails)

    # Sets the email parser
    # @param [String] first_name
    # @param [String] last_name
    def initialize(emails = '')
        @emails = emails
    end

    def parse
        @emails = @emails.split(/\s*,\s*/)
        temp = []
        @emails.each do |elem|
            temp2 = elem.split(' ')
            temp2.each { |elem2| temp.push(elem2) }
        end
        @emails = temp.uniq
    end
end

email_addresses = 'avi@test.com arel@test.com'
parser = EmailAddressParser.new(email_addresses)

parser.parse

puts parser.emails
