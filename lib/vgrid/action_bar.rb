# Define Grid actions like ADD, Remove, Update here

def action_bar
  required_actions = @options[:actions]

  content_tag :div do
    required_actions.each do |key,value|
      content_tag :span, "#{key}" if value
    end.join.html_safe
  end

end

def search_bar

end

def header
  @columns.each {|column|
    content_tag :th, column.titleize
  }
end