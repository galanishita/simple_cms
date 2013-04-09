class SlideshowController < ApplicationController
def slideshow
  @allquote = Quote.all
end
end
