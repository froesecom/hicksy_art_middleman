module ImageCollectionHelper

  def painting_categories_image_collection(helpers)
    dato.painting_categories.map do |pc|
      PaintingCategoryImagePresenter.new(pc, helpers)
    end
  end

  def paintings_for_category(painting_category, helpers)
    helpers.dato.paintings.select{|p| p.painting_category == painting_category}.map do |p|
      PaintingImagePresenter.new(p, helpers)
    end
  end

end
