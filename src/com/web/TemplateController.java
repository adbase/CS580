package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TemplateController {
	@RequestMapping(value="/index")
	public String index(){
		return "Index";
	}
	 @RequestMapping(value="/listTrip")
	 public String getTrips(){
		 System.out.println("test");
		 return "views/page-trips/trip";
	 }
	 
	 @RequestMapping(value="/addTrip")
	 public String addTrip(){
		 return "views/page-trips/newTrip";
	 }
	 @RequestMapping(value="/vehicleCompany")
	 public String routerToVehicleCompany(){
		
		 return "views/page-partnerCompany/listCompany";
	 }
	 
	 @RequestMapping(value="/flightCompany")
	 public String routerToFlightCompany(){
		 return "views/page-partnerCompany/listCompany";
	 }
	 
	 @RequestMapping(value="/hotelCompany")
	 public String routerToHotelCompany(){
		 
		 return "views/page-partnerCompany/listCompany";
	 }
	 @RequestMapping(value="/localCompany")
	 public String routerToLocalCompany(){
		
		 return "views/page-partnerCompany/listCompany";
	 }
	 @RequestMapping(value="/vehicleManagement")
	 public String routerVehcileManagement(){
		
		 return "views/page-vehicleMangement/listVehicle";
	 }
	 @RequestMapping(value="/guideManagement")
	 public String routerGuideManagement(){
		
		 return "views/page-guides/list";
	 }
	 
	 
	 
	 
	 @RequestMapping(value="/add")
	 public String adduser(){
		 return "views/Newt1";
	 }
	 @RequestMapping(value="/addchildren")
	 public String addchildren(){
		 return "views/t3";
	 }
	 @RequestMapping(value="/search")
	 public String searchusers(){
		 return "views/t2";
	 }
	 
	
}
