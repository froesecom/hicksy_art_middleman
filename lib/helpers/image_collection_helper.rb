module ImageCollectionHelper

  def painting_categories_image_collection(helpers)
    dato.painting_categories.map do |pc|
      PaintingCategoryImagePresenter.new(pc, helpers)
    end
  end

end
