package com.axelor.partner.web;

import com.axelor.partner.db.Partner;
import com.axelor.rpc.ActionRequest;
import com.axelor.rpc.ActionResponse;

public class HelloController {
	public void say(ActionRequest request, ActionResponse response) {
		System.out.println("com.axelor.partner.web.HelloController.say method called with no argument   ");
		System.out.println();
		System.out.println();
		Partner partner = request.getContext().asType(Partner.class);

		System.out.println(partner);
		/**
		 * 
		 * Partner$ByteBuddy$cDhjlThD{id=3, partnerSeq=pat003, firstName=Hemanth,
		 * lastName=Tank, dateOfBirth=2019-06-26}
		 * 
		 */

		System.out.println();
		System.out.println();

		System.out.println(request.getContext().entrySet());
		/**
		 * 
		 * [lastName=Tank, _signal=sayBtn, address=[{area=tank, zip=330311, city=jaipur,
		 * street=lll, id=4, state=rajasthan, version=0}, {area=tankcity, zip=878,
		 * city=city, street=street, id=3, state=state, version=0}], fullName=Hemanth
		 * Tank, dateOfBirth=2019-06-26, version=1, firstName=Hemanth,
		 * partnerSeq=pat003, json-enhance=true, _model=com.axelor.partner.db.Partner,
		 * company=[{id=4}, {id=1}], _id=null, id=3, email={emailId=hemant@gmail.com,
		 * id=3, version=0}]
		 * 
		 */

	}

	public void say(String name) {
		System.out.println("100% reason to remember the name : " + name);

	}
	
	public void onNewSayPartner() {
		System.out.println("onNew method called partner form");
	}
	
	public void onLoadSayPartner(ActionRequest request, ActionResponse response) {
		System.out.println("onLoad method called partner form");
	}
	
	public void onSaveSayPartner() {
		System.out.println("onSave method called from partner form");
	}
	
	public void onNewSayAddress() {
		System.out.println("onNew method called from address form");
	}
	
	public void onLoadSayAddress() {
		System.out.println("onLoad method called from address form");
	}
	
	public void onSaveSayAddress() {
		System.out.println("onSave method called from address form");
	}
	
//	public void onLoadSayPartner() {
//		System.out.println("Hello on load partner");
//	}
		
}
