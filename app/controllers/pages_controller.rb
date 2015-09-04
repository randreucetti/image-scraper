class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def show
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(page_params)
    @page.images << Image.new(:name => "PHOTO", :image => URI.parse('https://scontent-sin1-1.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10984470_10203046783049331_5782963138364494370_n.jpg?oh=c96e69624908eacd174379faf212972b&oe=56705FBD'))
    if @page.save
      redirect_to '/pages'
    else
      render 'new'
    end
  end

  private

  def page_params
    params.require(:page).permit(:url)
  end
end
