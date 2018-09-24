class PaintingImagePresenter < ImagePresenter

  def hero_painting
    record
  end

  def record_path
    helpers.painting_path(record)
  end

  def image_url(opts={})
    hero_painting.photo.url(opts) if hero_painting
  end

end
