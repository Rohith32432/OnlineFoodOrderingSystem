package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.DBoy;
import com.klef.jfsd.springboot.model.DBoyDetails;
import com.klef.jfsd.springboot.model.Items;
import com.klef.jfsd.springboot.model.Restaurant;
import com.klef.jfsd.springboot.model.cart;
import com.klef.jfsd.springboot.repository.ItemsRepository;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.DBoyService;
import com.klef.jfsd.springboot.service.RestaurantService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private RestaurantService restaurantService;
	@Autowired
	private ItemsRepository itmrepo;
	
	@Autowired
	private DBoyService dboyService;
	
	@GetMapping("/")
	public String main() 
	{
		return "index";
	}
	
	@GetMapping("about")
	   public ModelAndView about()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("about");
	     return mv;
	   }
	@GetMapping("contact")
	   public ModelAndView contact()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("contact");
	     return mv;
	   }
	//-------------------------Customer methods------------------------------
	
	@GetMapping("customerreg")
	   public ModelAndView customerreg()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("signup");
	     return mv;
	   }
	
	@PostMapping("insertcustomer")
	   public ModelAndView insert(HttpServletRequest request) 
	   {
		   ModelAndView mv = new ModelAndView();
		   
		   String msg = null;
		   String frommail="haveit.service.asap@gmail.com";
			String toemail=null;
			String subject="welcome to haveit";
			String text="You have Successfully registered in haveit";
		   try 
		   {
			   String name = request.getParameter("name");
			   String gender = request.getParameter("gender");
			   String dob = request.getParameter("dob");
			   String email = request.getParameter("email");
			   String pwd = request.getParameter("pwd");
			   String location = request.getParameter("location");
			   String contact = request.getParameter("contact");
			   
			   Customer cus = new Customer();
			   
			   cus.setName(name);
			   cus.setGender(gender);
			   cus.setDateofbirth(dob);
			   cus.setEmail(email);
			   cus.setPassword(pwd);
			   cus.setLocation(location);
			   cus.setContact(contact);
			   
			   msg = customerService.addcustomer(cus);
			   toemail = email;
			   mv.setViewName("signup");
		   }
		   catch(Exception e)
		   {
			   msg = e.getMessage();
			   mv.setViewName("displayerror");
			   mv.addObject("message", msg);
		   }
		   return sendEmail(frommail, toemail, subject, text);
	   }
	
	@GetMapping("customerlogin") // URI & method name can be different
	   public ModelAndView customerlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("signup");
	     return mv;
	   }
	
	@PostMapping("checkcustomerlogin")
	   public ModelAndView checkcustomerlogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	       Customer cust = customerService.checkcustomerlogin(email, pwd);
	       
	       if(cust!=null)
	       {
	         //session
	    	   
	    	   HttpSession session = request.getSession();
	    	   session.setAttribute("cid", cust.getId());  //cid is a session variable
	    	   session.setAttribute("cname", cust.getName());  //cname is a session variable
	    	   
	    	 //session
	         mv.setViewName("viewall");
	       }
	       else
	       {
	         mv.setViewName("signup");
	         mv.addObject("message", "Login Failed");
	       }
	       
	       return viewall();
	   }
	
	@GetMapping("updateprofile")
    public ModelAndView updateemp(HttpServletRequest request)
    {
      ModelAndView mv = new ModelAndView();
      
      HttpSession session = request.getSession();
      
      mv.setViewName("customerprofile");
      
      mv.addObject("cid", session.getAttribute("cid"));
      mv.addObject("cname", session.getAttribute("cname"));
      
      int id = (int) session.getAttribute("cid");
      
      Customer cust = customerService.viewcustomerbyid(id);
      
      mv.addObject("cust", cust);
      
      return mv;
    }
	
	@PostMapping("update")
    public ModelAndView updateaction(HttpServletRequest request)
    {
      String msg = null;
      
      ModelAndView mv = new ModelAndView();
      
        HttpSession session = request.getSession();
      
      mv.addObject("cid", session.getAttribute("cid"));
      mv.addObject("cname", session.getAttribute("cname"));
      
      int id = (int) session.getAttribute("cid");
      
     try
     {
       String name = request.getParameter("name");
       String dob = request.getParameter("dob");
       String email = request.getParameter("email");
       String pwd = request.getParameter("pwd");
       String location = request.getParameter("location");
       String contact = request.getParameter("contact");
       
       Customer cust = new Customer();
        cust.setId(id);
        cust.setName(name);
        cust.setDateofbirth(dob);
        cust.setEmail(email);
        cust.setPassword(pwd);
        cust.setLocation(location);
        cust.setContact(contact);
        
        
        msg = customerService.updatecustomer(cust);
        
        mv.setViewName("signup");
        mv.addObject("message",msg);
       
     }
     catch(Exception e)
     {
       msg = e.getMessage();
       
       mv.setViewName("updateerror");
        mv.addObject("message",msg);
     }
      
     
      return mv;

    }
	
	@GetMapping("custlogout")
    public ModelAndView custlogout() 
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("signup");
    	mv.addObject("message", "Logout Successfully");
    	return mv;
    }
	
	@GetMapping("chooserestaurants")
	public ModelAndView chooserestaurants(){
		ModelAndView mv = new ModelAndView();
	       mv.setViewName("demo");
	       
	       List<Restaurant> restlist= adminService.viewallrestaurants();
	       
	       mv.addObject("restdata", restlist);
	       
	       return mv;
	}
	
	@GetMapping("chooser")
    public ModelAndView chooseresdemo(@RequestParam("id") int eid)
    {
      Restaurant rest = adminService.viewrestaurantbyid(eid);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("chooserestbyid");
      mv.addObject("rest", rest);
      return mv;
    }
	
	
	  @GetMapping("check")
	    private ModelAndView check(HttpSession session)
	    {
	    	ModelAndView mv=new ModelAndView("check");
	    	int cid=(int) session.getAttribute("cid");
	    	List<cart> c=customerService.custitems(cid);
	    	mv.addObject("data", c);
	    	return mv;
	    }
	  @GetMapping("addtocart")
	    private ModelAndView addtocart( @RequestParam int id,HttpSession session)
	    {
	    	 int rid = (int) session.getAttribute("cid");
	    	 
	    	 cart c=new cart();
	    	 c.setCid(rid);
	    	 c.setItem(customerService.cartbyid(id));
	    	 customerService.addcart(c);
	    	return viewall();
	    }
	  @GetMapping("viewall")
	    public ModelAndView viewall()
	    {
	    	ModelAndView mv=new ModelAndView();
	    	mv.setViewName("viewall");
	    	List<Restaurant> res=restaurantService.viewrest();
	    	mv.addObject("resdata", res);
	    	List<Items> item=itmrepo.findAll();
	    	mv.addObject("item", item);
	    	return mv;
	    }
	  @GetMapping("specitems")
	    public ModelAndView specfi(@RequestParam("id") int id)
	    {
	    	ModelAndView mv=new ModelAndView();
	    	
	    	mv.setViewName("specitems");
//	    	Items test =null;
//	    	test = sample(id);
//	    	if(test!=null) {
//	    	  mv.addObject("detail", test);
//	    	 }
	    	Restaurant res=restaurantService.vieweProfile(id);
	    	mv.addObject("res", res);
	        List<Items> lst = restaurantService.viewitems(id);
	        mv.addObject("item", lst);
	    	return mv;
	    }
	  
//	  public Items sample(@RequestParam("spdid") int id)
//	  {
//		
//		  System.out.println(customerService.cartbyid(id));
//		return customerService.cartbyid(id);
//	  }
	  
	  @GetMapping("remove")
	  public String remove(@RequestParam int id)
	  {
		 customerService.remove(id);
		 return "redirect:/check";
	  }
	
	
	//-------------------------Restaurant methods------------------------------
	
	@GetMapping("reshome")
    public ModelAndView reshome()
    {
      ModelAndView mv=new ModelAndView("reshome");
      return mv;
    }
	
	@PostMapping("addres")
    public ModelAndView addresturent(HttpServletRequest request, @RequestParam("image") MultipartFile file) throws IOException, SerialException, SQLException
    {
      ModelAndView mv=new ModelAndView();
      String msg = null;
	   String frommail="haveit.service.asap@gmail.com";
		String toemail=null;
		String subject="welcome to haveit partnership";
		String text="You have Successfully registered in haveit adn became our valuable restaurant partner";
		try {
      String name=request.getParameter("name");
      String email=request.getParameter("email");
      String pwd=request.getParameter("pwd");
      String contact=request.getParameter("contact");
      String location=request.getParameter("location");     
     
       byte[] bytes = file.getBytes();
       Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
       
      
      Restaurant res=new Restaurant();
      res.setName(name);
      res.setEmail(email);
      res.setPassword(pwd);
      res.setContactno(contact);
      res.setLocation(location);
      res.setImage(blob);
       
     msg=  restaurantService.addresturent(res);
     toemail = email;
       mv.setViewName("reshome");
		}
		catch(Exception e){
			msg = e.getMessage();
			mv.setViewName("displayerror");
            mv.addObject("msg", msg);
		}
		return sendEmailR(frommail, toemail, subject, text);
    }
	
	@GetMapping("displayrestimage")
    public ResponseEntity<byte[]> displayrestimagedemo(@RequestParam("id") int id) throws IOException, SQLException
    {
      Restaurant product =  restaurantService.vieweProfile(id);
      byte [] imageBytes = null;
      imageBytes = product.getImage().getBytes(1,(int) product.getImage().length());

      return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
    }
	
	@PostMapping("checkrestlogin")
    public ModelAndView checkrestlogin(HttpServletRequest request)
    {
      ModelAndView mv=new ModelAndView();
         String email = request.getParameter("email");
         String pwd = request.getParameter("pwd");
         
           Restaurant rest = restaurantService.checkreslogin(email, pwd);
           System.out.println(rest);
           if(rest!=null)
           {
             
             HttpSession session=request.getSession();
             session.setAttribute("rid", rest.getId()); //rid is session variable
             session.setAttribute("rname", rest.getName());
             
             mv.setViewName("additems");
           }
           else
           {
             mv.setViewName("reshome");
             mv.addObject("message", "Login Failed");
           }
           
           return mv;
       }
	
	@GetMapping("updaterest")
    public ModelAndView updaterest(HttpServletRequest request)
    {
      ModelAndView mv = new ModelAndView();
      
      HttpSession session = request.getSession();
      
      mv.setViewName("restprofile");
      
      mv.addObject("rid", session.getAttribute("rid"));
      mv.addObject("rname", session.getAttribute("rname"));
      
      int id = (int) session.getAttribute("rid");
      
      Restaurant rest = restaurantService.viewrestaurantbyid(id);
      
      mv.addObject("rest", rest);
      
      return mv;
    }
	
	@PostMapping("restupdate")
    public ModelAndView updateactionres(HttpServletRequest request)
    {
      String msg = null;
      
      ModelAndView mv = new ModelAndView();
      
        HttpSession session = request.getSession();
      
      mv.addObject("rid", session.getAttribute("rid"));
      mv.addObject("rname", session.getAttribute("rname"));
      
      int id = (int) session.getAttribute("rid");
      
     try
     {
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String pwd = request.getParameter("pwd");
       String location = request.getParameter("location");
       String contactno = request.getParameter("contactno");
       
       Restaurant rest = new Restaurant();
        rest.setId(id);
        rest.setName(name);
        rest.setEmail(email);
        rest.setPassword(pwd);
        rest.setLocation(location);
        rest.setContactno(contactno);
        System.out.println(rest);
        
        msg = restaurantService.updateResturent(rest);
        
        mv.setViewName("reshome");
        mv.addObject("message",msg);
       
     }
     catch(Exception e)
     {
       msg = e.getMessage();
       
       mv.setViewName("resprofile");
        mv.addObject("message",msg);
     }
      
     
      return mv;

    }
	
	@GetMapping("restlogout")
    public ModelAndView restlogout() 
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("reshome");
    	mv.addObject("message", "Logout Successfully");
    	return mv;
    }
	
	//-------------------------Items methods------------------------------
	
	@GetMapping("additems")
    public ModelAndView addres()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("additems");
      return mv;
    }
	
	@PostMapping("demo")
    public ModelAndView demo(HttpServletRequest request, HttpSession session)
    {
      ModelAndView mv = new ModelAndView();
      String name=request.getParameter("name");
      String url=request.getParameter("url");
      int amt=Integer.parseInt(request.getParameter("amt"));
      Restaurant restaurant = new Restaurant();
      int restid = (int) session.getAttribute("rid");
      restaurant.setId(restid);
      Items itm=new Items();
      itm.setName(name);
      itm.setUrl(url);
      itm.setPrice(amt);
      itm.setRestaurant(restaurant);
     restaurantService.additems(itm);
      mv.setViewName("additems");
      return mv;
    }
	
	@GetMapping("viewitems")
    public ModelAndView viewitems(HttpSession session)
    {
      ModelAndView mv=new ModelAndView();
      mv.setViewName("viewitems");
      int restid = (int) session.getAttribute("rid");  //foreign key creation for session
      List<Items> itm=restaurantService.viewitems(restid);
      mv.addObject("itemlst", itm);
      return mv;
    }
	
	@GetMapping("deleteitems")
    public ModelAndView deletitems(HttpSession session)
    {
      ModelAndView mv = new ModelAndView();
      int restid = (int) session.getAttribute("rid");
      List<Items> ilist = restaurantService.viewitems(restid);
      mv.addObject("itemdata", ilist);
      mv.setViewName("deleteitems");

      
      return mv;
    }
	
	@GetMapping("deleteitem/{id}")
    public String deleteitemsaction(@PathVariable("id") int eid)
    {
      restaurantService.deleteitems(eid);
      return "redirect:/deleteitems";
    }
	
	
	//-------------------------Admin methods------------------------------
	
	@GetMapping("admin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
	       
	      
	       String uname = request.getParameter("uname");
	       String pwd = request.getParameter("pwd");
	       
	       Admin a = adminService.checkadminlogin(uname, pwd);
	       
	       if(a!=null)
	       {
	         mv.setViewName("adminhome");
	         long rcount=adminService.restcount();
	         long ccount=adminService.customercount();
	         
	         mv.addObject("rcount", rcount);
	         mv.addObject("ccount", ccount);
	         
	       }
	       else
	       {
	         mv.setViewName("adminlogin");
	         mv.addObject("message", "Login Failed");
	       }
	       return mv;
		
	}
	
	@GetMapping("adhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView("adminhome");
		return mv;
	}
	
	@GetMapping("viewallrestaurants")
	public ModelAndView viewallrestaurants(){
		ModelAndView mv = new ModelAndView();
	       mv.setViewName("viewallrestaurants");
	       
	       List<Restaurant> restlist= adminService.viewallrestaurants();
	       
	       mv.addObject("restdata", restlist);
	       
	       return mv;
	}
	@GetMapping("viewr")
    public ModelAndView viewresdemo(@RequestParam("id") int eid)
    {
      Restaurant rest = adminService.viewrestaurantbyid(eid);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("viewrestbyid");
      mv.addObject("rest", rest);
      return mv;
    }
	
	@GetMapping("deleterestaurant")
    public ModelAndView deleteemp()
    {
      ModelAndView mv = new ModelAndView();
      List<Restaurant> rlist = adminService.viewallrestaurants();
      mv.addObject("restdata", rlist);
      mv.setViewName("deleterestaurant");

      
      return mv;
    }
	
	@GetMapping("deleterestaurant/{id}")
    public String deleteaction(@PathVariable("id") int eid)
    {
      adminService.deleterestaurant(eid);
      return "redirect:/deleterestaurant";
    }
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers(){
		ModelAndView mv = new ModelAndView();
	       mv.setViewName("viewallcustomers");
	       
	       List<Customer> custlist= adminService.viewallcustomers();
	       
	       mv.addObject("custdata", custlist);
	       
	       return mv;
	}
	
	@GetMapping("viewc")
    public ModelAndView viewcusdemo(@RequestParam("id") int eid)
    {
      Customer cust = adminService.viewcustomerbyid(eid);
      ModelAndView mv = new ModelAndView();
      mv.setViewName("viewcustbyid");
      mv.addObject("cust", cust);
      return mv;
    }
	
	@GetMapping("demo")
	 public ModelAndView demo()
    {
   
      ModelAndView mv = new ModelAndView();
      mv.setViewName("demo");
  
      return mv;
    }
	
	@GetMapping("dboyregister")
	   public ModelAndView adddboy()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("dboyregister");
	     return mv;
	   }
	
	//-------------------------DBoy Methods------------------------------
	
	@GetMapping("delboyhome")
	  public ModelAndView delboyhome()
	  {
	    ModelAndView mv=new ModelAndView("delboyhome");
	    return mv;
	  }
	  
	  @GetMapping("dboy")
	  public ModelAndView dboylogin() {
	    ModelAndView mv = new ModelAndView("delboylogin");
	    return mv;
	  }
	  
	  @PostMapping("checkdboylogin")
	  public ModelAndView checkdboylogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	         
	        
	         String uname = request.getParameter("uname");
	         String pwd = request.getParameter("pwd");
	         
	         DBoy d = dboyService.checkdboylogin(uname, pwd);
	         
	         if(d!=null)
	         {
	           mv.setViewName("delboyhome");
	         }
	         else
	         {
	           mv.setViewName("delboylogin");
	           mv.addObject("message", "Login Failed");
	         }
	         return mv;
	    
	  }
	  @GetMapping("/displayMap")
	  public String map() {
	  return "map";
	  }
	  
	  @PostMapping("insertdboy")
	    public ModelAndView insertdboy(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      String msg = null;
	      try
	      {
	        String name = request.getParameter("name");
	        String gender = request.getParameter("gender");
	        String dob = request.getParameter("dob");
	        String dept = request.getParameter("dept");
	        String sal = request.getParameter("salary");
	        double salary = Double.parseDouble(sal);
	        String email = request.getParameter("email");
	        String pwd = request.getParameter("pwd");
	        String location = request.getParameter("location");
	        String contact = request.getParameter("contact");
	        
	        DBoyDetails d = new DBoyDetails();
	        d.setName(name);
	        d.setGender(gender);
	        d.setDateofbirth(dob);
	        d.setDepartment(dept);
	        d.setSalary(salary);
	        d.setEmail(email);
	        d.setPassword(pwd);
	        d.setLocation(location);
	        d.setContact(contact);
	        
	        msg = adminService.adddboy(d);
	        
	        mv.setViewName("displaymsgdboy");
	        mv.addObject("message", msg);
	        
	      }
	      catch(Exception e)
	      {
	        msg = e.getMessage();
	        
	        mv.setViewName("displayerrordboy");
	        mv.addObject("message", msg);
	      }
	      return mv;
	    }
	
	//-------------------------Add-ons(Mail,Loading)------------------------------
	
		@Autowired
		JavaMailSender mail;
		public ModelAndView sendEmail(String fromemail,String toemail,String subject,String text)
		{
			ModelAndView mv = new ModelAndView("signup");
			try
			{
			SimpleMailMessage smm=new SimpleMailMessage();
			smm.setFrom(fromemail);
			smm.setTo(toemail);
			smm.setSubject(subject);
			smm.setText(text);
			mail.send(smm);
			return mv;
			}
			catch (Exception e) 
			{
				mv.setViewName("index");
				return mv;
			}
			
		}
		
		@Autowired
		JavaMailSender rmail;
		public ModelAndView sendEmailR(String fromemail,String toemail,String subject,String text)
		{
			ModelAndView mv = new ModelAndView("reshome");
			try
			{
			SimpleMailMessage smm=new SimpleMailMessage();
			smm.setFrom(fromemail);
			smm.setTo(toemail);
			smm.setSubject(subject);
			smm.setText(text);
			rmail.send(smm);
			return mv;
			}
			catch (Exception e) 
			{
				mv.setViewName("index");
				return mv;
			}
			
		}
		
}
