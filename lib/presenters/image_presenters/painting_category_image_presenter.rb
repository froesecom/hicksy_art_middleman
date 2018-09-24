class PaintingCategoryImagePresenter < ImagePresenter

  def hero_painting
    @painting ||= helpers.dato.paintings.find {|p| p.painting_category.slug == record.slug}
  end

  def record_path
    helpers.painting_category_path(record)
  end

  def image_url(opts={})
    hero_painting.photo.url(opts) if hero_painting
  end

end
