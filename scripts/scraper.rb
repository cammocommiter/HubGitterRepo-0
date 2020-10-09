before_action :fetch_current_category, only: [:show,:edit,:update] 
before_action :fetch_categories, only: [:show,:edit,:update] 
before_action :fetch_search_results, only: [:show,:edit,:update] #or whatever

def show
  rate
end

private

def fetch_current_category
  @category = Category.friendly.find(params[:id])
end

def fetch_categories
  @categories = Category.all
end

def fetch_search_results
  @search = category.products.approved.order(updated_at: :desc).ransack(params[:q])
  @products = @search.result.page(params[:page]).per(50)
end

opts = Trollop::options do
  opt :quiet, "Use minimal output", :short => 'q'
  opt :interactive, "Be interactive"
  opt :filename, "File to process", :type => String
end
