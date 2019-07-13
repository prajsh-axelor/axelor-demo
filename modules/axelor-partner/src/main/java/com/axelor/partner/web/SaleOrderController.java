package com.axelor.partner.web;

import com.axelor.rpc.ActionRequest;
import com.axelor.rpc.ActionResponse;

public class SaleOrderController {
	
	public void onConfirm(ActionRequest request, ActionResponse response) {
		System.out.println("On change in Confirmed method called" ); 
	}
	
	public void calculate(ActionRequest request, ActionResponse response){
		System.out.println("calculate method called" ); 
	}
	
}
