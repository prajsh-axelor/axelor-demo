package com.axelor.partner.web;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.axelor.auth.db.User;
import com.axelor.partner.db.Project;
import com.axelor.partner.db.ProjectTask;
import com.axelor.rpc.ActionRequest;
import com.axelor.rpc.ActionResponse;
import com.opencsv.CSVWriter;

public class ProjectExport {

  public void print(ActionRequest request, ActionResponse response) {
    System.out.println("Hello from print method ");
    Project project = request.getContext().asType(Project.class);
    System.out.println(project);
    String[] headers = new String[] {"id", "name", "priority", "description", "notes", "parent"};
    String[] projectDetail =
        new String[] {
          project.getId().toString(),
          project.getName(),
          project.getPriority().toString(),
          project.getDescription(),
          project.getNotes(),
          project.getParent().getId().toString()
        };

    Set<User> userSet = project.getMemberSet();
    for (User tempUser : userSet) {
      System.out.println(tempUser.getId());
    }

    List<ProjectTask> taskList = project.getTaskList();
    for (ProjectTask tempTask : taskList) {
      System.out.println(tempTask);
    }

    System.out.println("\n\n\n");
    System.out.println(taskList);
  }

  public void createCSV(ActionRequest request, ActionResponse response) {
    String filePath =
        "/home/axelor/adk-workspace/axelor-demo/modules/axelor-partner/src/main/resources/data-export/project.csv";
    File file;
    CSVWriter writer;

    Project project = request.getContext().asType(Project.class);
    String[] headers = new String[] {"id", "name", "priority", "description", "notes", "parent"};
    String[] projectDetail =
        new String[] {
          project.getId().toString(),
          project.getName(),
          project.getPriority().toString(),
          project.getDescription(),
          project.getNotes(),
          project.getParent().getId().toString()
        };

    List<String[]> exportData = new ArrayList<>();
    exportData.add(headers);
    exportData.add(projectDetail);

    try {
      file = new File(filePath);
      writer = new CSVWriter(new FileWriter(file));

      writer.writeAll(exportData);
      // logic to get objects and write into a csv file
      writer.close();
    } catch (IOException e) {
      // TODO: handle exception
    	e.getMessage();
    } finally {

    }
  }
}
