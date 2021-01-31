module ApplicationHelper
  def cache?
    ENV.fetch("CACHE_ON", false)
  end
end
