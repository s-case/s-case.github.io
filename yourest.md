### YouRest web directory application

The purpose of the YouREST web directory application is to provide a centralised interface for advertising the S-CASE Web Services. YouREST provides a catalog of services and a web site to browse and search this catalog. These Web Services may be external services registered by the user in the YouREST platform, or RESTful web services produced by the S-CASE MDE and Web Service Composition mechanisms. The intended user is able to browse all the registered web services to the platform and view their metadata. Searching functionality is also an option.

#### API Description

The initial page of the tool can be accessed from the URL http://yourest.scasefp7.com/ and prompts user to login to the platform.


![Initial page](yourest_images/initial.png)


By selecting “Sign In”, the user may login or create a new account to YouREST platform. In case that the user is not registered, a First/Last/Screen Name and a valid email address should be entered. The text verification should be also inserted for preventing the platform from spamming.


![The YouREST login page](yourest_images/login.png) 
![The YouREST registration page](yourest_images/registration.png) 


After a successful login or registration, the user is directed to the main page of the YouREST, where the list of the registered web services are depicted. The home page contains also the list of the application domains, searching functionality and the functionality to register a new web service.

 
![The YouREST home page](yourest_images/home.png) 


It should be noted that each web service listed in the home page, may contain multiple web service operations. These operations, along with the web service’s metadata, can be seen by selecting the ![search icon](yourest_images/search.png) button of each web service. The above mentioned information appears in a new popup window.

 
![Web Service metadata in YouREST](yourest_images/metadata.png)  


In case that the web service belongs to the logged in user (i.e. current user has registered the web service in YouREST), the title, description and the image URL of the web service can be edited. The user can also delete operations of the web service, or even delete the whole web service (by consecutively deleting its operations).


![Editing Web Service metadata in YouREST](yourest_images/editMetadata1.png)	 
![Editing Web Service metadata in YouREST](yourest_images/editMetadata2.png) 


It should be noted that the operation delete button is only enabled for the logged in user to whom the web service belongs, as for the edit operation. The searching functionality together with the left panel that contains application domains list, limit the results presented to the user, according to keywords (contained in web service title, description and operation names) or the application domain category that the web service was registered. The “Add a new service” button, redirects the user to the web service registration page.

 
![The Web Service annotation page of YouREST](yourest_images/annotation.png)  


In this page the user can register a new web service by providing a WSDL/WADL or RAML file. For the semantic annotation of an external web service, a valid URL containing the web service description (for WSDL and WADL documents) or the selection of a RAML document selection is required. Thus, when the user selects a valid web service documentation and selects the Parse and align button, the web service description is parsed in the background and the classification algorithms classify the web service operations according to the three-level categorisation method.

