module PathHelper
  PROD_DOMAIN = "https://allenhicks.art"

  def page_path(page)
    "/#{page.slug}.html"
  end

  def painting_category_path(pc, absolute=false)
    path = "#{base_painting_category_path(pc)}.html"
    if absolute
      return absolute_path(path)
    end
    path
  end

  def painting_path(p, absolute=false)
    path = "#{base_painting_category_path(p.painting_category)}/#{p.slug}.html"
    if absolute
      return absolute_path(path)
    end
    path
  end

  def paintings_path
    "/#{base_paintings_path}.html"
  end

  def base_paintings_path
    "/paintings"
  end

  def base_painting_category_path(pc)
    "#{base_paintings_path}/#{pc.slug}"
  end
  
  def absolute_path(path)
    "#{self.class::PROD_DOMAIN}#{path}".split(".html").first
  end
end
