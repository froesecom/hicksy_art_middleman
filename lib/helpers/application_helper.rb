module ApplicationHelper

  def featured_paintings(paintings)
    paintings.select {|p| puts p.featured; p.featured == true}
  end

  def painting_category_path(pc)
    "/paintings/#{pc.slug}.html"
  end

end
