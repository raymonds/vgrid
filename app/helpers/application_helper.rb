module ApplicationHelper

require_relative '../../lib/vgrid/vgrid'

  def vgrid_helper
    v= Vgrid::Grid.new(User, columns=[{name: 'name'},{name: 'doj'}])
    return v.header
  end
end
