class PublicController < ApplicationController

  layout 'public'
  
  before_filter :setup_navigation
  
  def index
  		if params[:lang] == 'hindi'
 			 @chdb = Subject.changedb 
 	  elsif params[:lang] == 'english'
 			 @chdb = Subject.changedb1   
  		end 
   @quotes = Quote.find :first, :offset => rand(Quote.count)
  end
 
  def latest_update
  end
  def search
	render('index')
  end
def show

@subnav = Subject.find(params[:id])
@page_title = @subnav.name
@subsubjectnav = SubSubject.where(:subject_id => @subnav.id)

@relpages = Page.where(:subject_id => @subnav.id).order("created_at desc").limit(3)
@titles = Page.where(:subject_id => @subnav.id).order(:name)
@authors = Author.all
@popquote =   Quote.all.sort_by{rand}.slice(0,3)


end

def showsubsubject
@subsubjectid = SubSubject.find(params[:id])
@subjectname = Subject.find(@subsubjectid.subject_id)
@subsubjectname = SubSubject.where(:subject_id => @subjectname.id)

@subpages = Page.where(:sub_subject_id => @subsubjectid.id)
@pagename = @subpages.order(:name)
end

def showpages
@pageid = Page.find(params[:id])
@page_title = @pageid.subject.name
@page_script = @pageid.name
@pagesec = Section.where(:page_id => @pageid.id)
end

def quotations
@page_title = 'Quotations'
@topics = Topic.all
@quotes = Quote.all
@authors = Author.all
@type = params[:type] 
if @type == 'author'
	@selauthor = Author.find(params[:id])
	@selquotes = Quote.where(:author_id => @selauthor.id).paginate :page => params[:page], :per_page => 2
elsif @type == 'topic'
	@seltopic = Topic.find(params[:id])
	@selquotes = Quote.where(:topic_id => @seltopic.id).paginate :page => params[:page], :per_page => 2
elsif @type == 'topviews'
   @selquotes = Quote.all.sort_by{rand}.slice(0,10)
else 
	@selquotes = Quote.all

end
end

  private
  
  def setup_navigation
    @subjects = Subject.visible.sorted
    @pages = Page.last
  end
  
end
