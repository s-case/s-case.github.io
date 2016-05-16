### Web Service composition

The following sections provide an overview of creating web service compositions from Storyboard diagrams.

##### Import Storyboard diagrams

First, the user has to create a Web Service Composition Storyboard diagram with the Storyboard plugin.

Then he/she can select to *Create service composition* from the S-CASE Dashboard panel (or from the appropriate button in the Service Composition View). In the pop-up window that appears the user can choose the appropriate .scd file.

Each action is replaced by the most suitable web service operation, based on the name, the inputs, the outputs and metadata of the operation. More web service operations are also added in the workflow, if they reduce the total number of the workflow’s inputs. So output values of one service can be used as input values for another service and these variables are concidered as matched. The above result to the transformed workflow of web services which appears in the View along with a panel on the right, for providing input values for the web services. In the workflow graph, the operation nodes have grey color, the condition nodes cyan, the inputs and outputs of the operations purple and the matched inputs and outputs blue. On the right panel input variables can be WSDL inputs in case of WSDL services and body, query or uri parameters in case of RESTful web services. A panel for the output variables appears also on the right.

##### Run the workflow of web services

After the workflow is automatically (or manually) generated, the user can choose to execute it. First, he/she has to provide the input values for the web services (also any basic authentication parameters if they exist). The inputs that are not editable get their values from outputs of previous web services to which they are connected (matched). By pressing the “Run Workflow” button the web services are successively called and the response is assigned to the outputs of the workflow. The flow of execution is shown by highlighting (in yellow) the node that is currently executed. The user can stop the execution at any time by cancelling the Eclipse Job. At the end of the execution all output values are filled and displayed in the right side of the View. 

##### Generate the code of the composite web service

The produced workflow of web services constitutes a single web service and can, thus, be automatically converted into a java RESTful web service. The web service is a Maven, Dynamic Web, Eclipse project. By pressing the   button a window pops-up for the user to specify the new project’s name. If a project with the same name already exists in the workspace, the user is asked if he/she would like to replace it. The project is created in the workspace and can be seen in the Project Explorer window.

##### Deploy composite web service on the S-CASE server

By pressing the   button of the toolbar a Maven built is executed in the background, which produces the Web application ARchive (WAR) file of the project. The WAR file takes the name of the project plus the “-0.0.1-SNAPSHOT” ending. Inside the same Eclipse Job  the WAR file is also automatically uploaded and deployed on the web server, provided by Flexiant Cloud for the S-CASE project. If the web service already exists on the server the user is prompted to choose whether he/she would like to update it with the new generated web service. If the user selects “OK” the previous service is deleted and the newer version of it, is transferred to the server. The path of the resource is the IP of the server, slash the name of the WAR file (e.g. http://ServerIP:8080/ProjectName-0.0.1-SNAPSHOT/). In order to call the service, the relative resource path “/rest/result/query”, plus the query parameters and their values need to be added to the above URI.
