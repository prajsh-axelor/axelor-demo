package com.axelor.test;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.axelor.partner.db.Project;
import com.opencsv.CSVWriter;

public class CSVDriver {
	
	public static void main(String [] args) {
		
		
		String filePath =
		        "/home/axelor/adk-workspace/axelor-demo/modules/axelor-demo-impl/src/main/resources/export-data/export.csv";
		    File file;
		    CSVWriter writer;

		    String[] headers = new String[] {"id", "name", "priority", "description", "notes", "parent"};
		    String[] something = new String[] {"this","is","prajjwal","singh","writing","something"};

		    List<String[]> exportData = new ArrayList<>();
		    exportData.add(headers);
		    exportData.add(something);

		    try {
		      file = new File(filePath);
		      writer = new CSVWriter(new FileWriter(file));

		      writer.writeAll(exportData); //to 
		      writer.writeNext(something); //to append data to the end of the csv file : takes String [] as argument
		      
		      
		      System.out.println("runnign export main" ); 
		      // logic to get objects and write into a csv file
		      writer.close();
		    } catch (IOException e) {
		      // TODO: handle exception
		    	System.out.println("IOException arised" + e.getMessage() ); 
		    } finally {
		    	
		    }
		    System.out.println("success" ); 
		
	}
	
}
