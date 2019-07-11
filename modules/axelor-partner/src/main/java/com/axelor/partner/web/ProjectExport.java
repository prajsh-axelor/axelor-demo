package com.axelor.partner.web;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.axelor.app.AppSettings;
import com.axelor.auth.db.User;
import com.axelor.partner.db.Partner;
import com.axelor.partner.db.Project;
import com.axelor.partner.db.ProjectTask;
import com.axelor.partner.db.repo.ProjectRepository;
import com.axelor.rpc.ActionRequest;
import com.axelor.rpc.ActionResponse;
import com.google.inject.Inject;
import com.opencsv.CSVWriter;

public class ProjectExport {

  @Inject ProjectRepository projectRepository;

  public void printGrid(ActionRequest request, ActionResponse response) {
//	  System.out.println(request.getContext().keySet());
//	  System.out.println(request.getContext().values());
	  
//	  System.out.println(request.getContext().get("_ids"));
//	  List<Integer> ids = (List<Integer>) request.getContext().get("_ids");
//	  ids.forEach(System.out::println);
//	  
//	  request.getContext().put("self_ids", ids);
//	  
//	  System.out.println(request.getContext().get("_ids").getClass().getName());
//	  
	  System.out.println(AppSettings.get().get("file.upload.dir"));
	  //	  System.out.println(request.getContext());
  }
  
  public void setFileUploadDirToContext(ActionRequest request, ActionResponse response) {
	  request.getContext().put("upload_path", AppSettings.get().get("file.upload.dir"));
	  System.out.println(request.getContext().get("upload_path"));
  }

  public void createCSVGrid(ActionRequest request, ActionResponse response) {
    String filePath =
        "/home/axelor/adk-workspace/axelor-demo/modules/axelor-partner/src/main/resources/data-export/project.csv";
    File file;
    CSVWriter writer;
    try {
      file = new File(filePath);
      writer = new CSVWriter(new FileWriter(file));

      writer.writeAll(getDataForCSV()); // to

      System.out.println("running export main");
      // logic to get objects and write into a csv file
      writer.close();
    } catch (IOException e) {
      // TODO: handle exception
      System.out.println("IOException arised : " + e.getMessage());
    } finally {

    }
    System.out.println("success");
  }

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

  public String[] getProjectDetails(Project project) {
    String partnerInterested = "";
    if (project.getPartnerSet() != null) {
      Set<Partner> patSet = project.getPartnerSet();
      if (patSet != null) {
        for (Partner tempPartner : patSet) {
          partnerInterested = partnerInterested + "|" + tempPartner.getId().toString();
        }
      }
    }

    String users = "";
    if (project.getMemberSet() != null) {
      Set<User> userSet = project.getMemberSet();
      if (userSet != null) {
        for (User tempUser : userSet) {
          users = users + "|" + tempUser.getId().toString();
        }
      }
    }

    String task = "";
    if (project.getTaskList() != null) {
      List<ProjectTask> taskList = project.getTaskList();
      if (taskList != null) {
        for (ProjectTask tempTask : taskList) {
          task = task + "|" + tempTask.getId().toString();
        }
      }
    }

    String parent = "";
    if (project.getParent() != null) {
      System.out.println(project.getParent().getId());
      parent += project.getParent().getId().toString();
    }

    String[] projectDetail =
        new String[] {
          project.getId().toString(),
          project.getName(),
          project.getPriority().toString(),
          project.getDescription(),
          project.getNotes(),
          parent,
          users.equals("")?"":users.substring(1),
          task.equals("")?"":task.substring(1),
          partnerInterested.equals("")?"":partnerInterested.substring(1)
        };

    return projectDetail;
  }

  public List<String[]> getDataForCSV() {
    List<Project> projectList = projectRepository.all().fetch();

    System.out.println("Project list size :: " + projectList.size());

    String[] headers =
        new String[] {
          "id",
          "name",
          "priority",
          "description",
          "notes",
          "parent",
          "users",
          "tasks",
          "partnerInterested"
        };

    List<String[]> projectData = new ArrayList<>();
    projectData.add(headers);

    for (Project project : projectList) {
      projectData.add(getProjectDetails(project));
    }
    return projectData;
  }

  public void createCSV(ActionRequest request, ActionResponse response) {
    String filePath =
        "/home/axelor/adk-workspace/axelor-demo/modules/axelor-partner/src/main/resources/data-export/project-form.csv";
    File file;
    CSVWriter writer;
    Project project = request.getContext().asType(Project.class);
    String[] headers =
        new String[] {
          "id",
          "name",
          "priority",
          "description",
          "notes",
          "parent",
          "users",
          "tasks",
          "partnerInterested"
        };

    List<String[]> projectData = new ArrayList<>();
    projectData.add(headers);
    projectData.add(getProjectDetails(project));
    try {
      file = new File(filePath);
      writer = new CSVWriter(new FileWriter(file));

      writer.writeAll(projectData); // to

      System.out.println("running export main");
      // logic to get objects and write into a csv file
      writer.close();
    } catch (IOException e) {
      // TODO: handle exception
      System.out.println("IOException arised : " + e.getMessage());
    } finally {

    }
    System.out.println("success");
  }
}
