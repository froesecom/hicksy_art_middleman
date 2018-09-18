module ApplicationHelper

  def featured_paintings(paintings)
    paintings.select {|p| puts p.featured; p.featured == true}
  end

end
