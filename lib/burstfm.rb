require "burstfm/version"
require "colorize"

module Burstfm
  class << self
    def front_matter()
      return [
        {label: "layout", content: "post"},
        {label: "status", content: "publish"},
        {label: "published", content: "true"},
        {label: "title", content: ""},
        {label: "date", content: Time.now.to_s},
        {label: "categories", content: "\n- Category"},
        {label: "tags", content: "\n- first_tag\n- second_tag"}
      ]
    end

    def print_line(line)
      puts("#{line[:label].yellow}: #{line[:content].cyan}")
    end
  
    def print()
      front_matter().each do |line|
        print_line(line)
      end
    end
    
  end
end
