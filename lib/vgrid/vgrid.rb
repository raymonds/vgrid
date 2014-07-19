module Vgrid
  class Grid
    include ActionView::Helpers
    #require_relative 'action_bar'

    # columns = [{name: empName, type: 'text', sortable: true, searchable: true, editable: true}]
    # options = {model: employee, actions: {add: true, delete: true, save: true, refresh: true, export: true},
    #            cache: true, expiry_interval: 10, row_limit = 10}
    def initialize(model = nil, columns = [], options = {})
      @model = model
      @options = options
      @columns = columns
      @data_limit = @options[:row_limit] || 10
    end

    def render
      data = @model.all
    end

    def header
      @columns.each do |column|
        content_tag :th, column[:name].titleize
      end.join.html_safe
    end

  end

end