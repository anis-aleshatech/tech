<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Menu;
use App\Models\Content;
use App\Models\Banner;
use App\Models\Gallery;
use App\Models\Service;
use App\Models\Blog;
use App\Models\Partner;
use App\Models\Management;
use App\Models\Staff;
use App\Models\Product;
use App\Models\Counter;
use App\Models\Protfolio;
use App\Models\VideoGallery;

class Index extends Controller
{
    public function __construct()
    {	
        
    }
	
    public function index()
    {      
		$menus = Menu::where('parent_id',NULL)->get();	
		
			
		$banners = Banner::all();	
		$articles = Content::where('menu_id',30)->first();	
		$services = Service::where('status',1)->orderBy('id', 'ASC')->take(6)->get();	
		$newsevents = Blog::where('status',1)->orderBy('id', 'DESC')->take(10)->get();	
		$ourteam = Staff::where('designation', 'Doctor')->orderBy('id', 'ASC')->get();
		$partners = Partner::where('status', 1)->orderBy('id', 'ASC')->get();
		$galleries = Gallery::where('status',1)->orderBy('id', 'ASC')->get();
		$counters = Counter::where('status', 1)->orderBy('id', 'ASC')->get();
		$abouttext = Content::where([['status', 1],['menu_id',1]])->first();
		$protfolios = Protfolio::where('status', 1)->orderBy('id', 'ASC')->get();
		 
		return view('frontend.home',compact('menus','banners','articles','services','newsevents','ourteam','partners','services','galleries','counters','abouttext','protfolios'));
    }
	
	public function content(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();			
		$menuslug = Menu::where('uri', $req->slug)->first();
		$articles = Content::where('menu_id',$menuslug->id)->first();			
		$allsubmenus = Menu::where('parent_id', $menuslug->id);	

		if($articles!=""){
			$articleTitle = $articles->title;
			$articleImage = $articles->image;
			$articleContent = $articles->content;
		}
		else{
			$articleTitle = '';
			$articleImage = '';
			$articleContent = '';
		}
		
		return view('frontend.article',compact('articles','menus','menuslug','allsubmenus','articleTitle','articleImage','articleContent'));
    }
	
	public function service()
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$services = Service::all();				
		return view('frontend.service',compact('menus','services'));
    }
	
	public function service_details($id)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$services = Service::where('id',$id)->first();				
		return view('frontend.service_details',compact('menus','services'));
    }
		
	public function news() 
    {      
		$menus = Menu::where('parent_id',NULL)->get();	
		$allnews = Blog::where('status',1)->orderBy('id', 'DESC')->paginate(50);	
		return view('frontend.news',compact('menus','allnews'));
    }
	
	public function news_details($slug) 
    {      
		$menus = Menu::where('parent_id',NULL)->get();	
		$news = Blog::where('url',$slug)->first();	
		
		$relatednews = Blog::where('id','!=',$news->id)->take(5)->get();	
		$latestnews = Blog::orderBy('id','DESC')->take(10)->get();	
		
		return view('frontend.news_details',compact('menus','news','relatednews','latestnews'));
    }
	
	
	public function director(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$directors = Staff::all();				
		return view('frontend.director',compact('menus','directors'));
    }
	
	
	public function director_details($id)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$directors = Staff::where('id',$id)->first();				
		return view('frontend.director_details',compact('menus','directors'));
    }
	
	public function management(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();
		$managements = Management::all();					
		return view('frontend.management',compact('managements','menus'));
    }
	
	public function portfolio(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$protfolios = Protfolio::all();				
		return view('frontend.protfolio',compact('menus','protfolios'));
    }
	
	public function team(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$allemployee = Staff::orderBy('id','desc')->get();
		return view('frontend.employee',compact('menus','allemployee'));
    }
	
	public function product(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$products = Product::all();				
		return view('frontend.product',compact('menus','products'));
    }
	
	
	public function product_details($id)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$products = Product::where('id',$id)->first();				
		return view('frontend.product_details',compact('menus','products'));
    }
	
	
		
	public function faqs(Request $req)
    {		   
		$menus = Menu::where('parent_id',NULL)->get();			
		$faqtopic = FaqTopic::all();

		if($req->has('q') && $req->q!=""){
			$faqs = Faq::where('topic',$req->q)->get();
		}
		else{
			$faqs = Faq::all();
		}
		return view('frontend.faq',compact('faqtopic','menus','faqs','menus'));
    }
	
	
	public function reports($slug)
    {      
		$menus = Menu::where('parent_id',NULL)->get();					
		$selectedmenu = Menu::where('uri', $slug)->first();	
		$reportingyear = Report::select('years')->where('menu_id',$selectedmenu->id)->groupBy('years')->orderBy('years','DESC')->get();	
		$reports = Report::where('menu_id',$selectedmenu->id)->orderBy('id','ASC')->get();	
				
		return view('frontend.report',compact('menus','reports','selectedmenu','reportingyear'));
    }
	
	public function getDownload($name,$files)
	{
		$file= "uploads/report/".$files;
	
		$headers = array('Content-Type: application/pdf');
	
		return Response::download($file, $files, $headers);
	}
	
	
	public function photos(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$photos = Gallery::all();				
		return view('frontend.photos',compact('menus','photos'));
    }
	
	
	
	public function videos(Request $req)
    {      
		$menus = Menu::where('parent_id',NULL)->get();		
		$videos = VideoGallery::all();				
		return view('frontend.videos',compact('menus','videos'));
    }
	

}
