module PathHelper

  def painting_category_path(pc)
    "#{base_painting_category_path(pc)}.html"
  end

  def painting_path(p)
    "#{base_painting_category_path(p.painting_category)}/#{p.slug}.html"
  end

  def paintings_path
    "/paintings"
  end

  def base_painting_category_path(pc)
    "#{paintings_path}/#{pc.slug}"
  end

end
