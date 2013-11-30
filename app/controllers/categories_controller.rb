class CategoriesController < InheritedResources::Base
  def show
    @category = Category.find(params[:id])
    @items = SiteData::DATA.fetch(@category.name)
  end
end
