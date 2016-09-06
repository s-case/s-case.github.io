### WSQR (Web Service Quality Representation)

<br>

WSQR is released as a stand-alone tool (as a Java ARchive JAR file) and also as a REST Service. The purpose of WSQR is to support developers 
in creating the XML document that complements their web services under development with WSQR schemas (i.e., non-functional well formed descriptions of the service).

<br>

#### WSQR stand-alone

<br>

The initial page of the WSQR can be accessed from the URL https://github.com/s-case/wsqr where to download the wsqr.jar tool (and all related source files).
The tool provides developers with a set of facilities to add a new WSQR representation (as an XML document) by adding internal and external measures and their relations as free text.
Moreover, the WSQR Annotation tool is connected with a set of Java classes that support the instantiation of the WSQR OWL Ontology to add semantic to the WSQR non-functional annotations. 
A set of SPARQL queries have been defined to support developers and web service integrators to reason about non-functional data of target web services 
(e.g., web services under development or third-party web services to be integrated in the business process.)

<br>


A GUI (Graphical User Interface) supports the annotation process. 
With the WSQR Tool, developers can (1) add a new service and select between internal or external quality measures; 
(2) add new external measures to the representation; 
(3) add new internal measures to the representation; 
(4) when the process of adding internal or external measures is completed, generate the XML document by pushing the Generate XML button.

<br>

![GUI](wsqr/wsqr_gui.png)

<br>

A set of examples (annotations) are available at URL http://s-case.github.io/wsqr/examples/

<br>



#### WSQR RESTful Service

<br>

The WSQR RESTful Service is provided as an API and integrated directly into the YouREST platform.  
