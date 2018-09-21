module PageHelper

  def page_partial(page)
    slug_to_partial_map = {
      "paintings" => "painting_categories"
    }
    slug_to_partial_map[page.slug]
  end

end
