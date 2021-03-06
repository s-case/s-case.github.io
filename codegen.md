### Code Generation

<br>

The final step in order to produce a Web Service using S-CASE, is to run its code genration engine and interact with its User Interface, which is provided in the form o Eclipse Wizards. These Wizards help the S-CASE developer to provide the required input in a valid way so that the code generation engine will output a compilable and executable Web Service. The following subsections document the configuration and use of the S-CASE code generation egnine.

<br>

#### Configuring the Code Generation Engine

<br>

As the Getting Started section of this Web Book describes, any code generation configuration takes place in the Code Generation configuration page that can be found by right clicking on a project, then selecting "Properties" and then by clicking the "Code generation" page under the "S-CASE" option. The figure below illustrates all the available options:

<br>

- **The Web Service name** field requires the desired name for the output Web Service that will be produced. It has to be one word and a valid string to be included in the generated java package path, e.g. without spaces and all letters are lowercase.
- **The Output Path** field specifies a folder in which the code generation engine will output the Web Service genrated code and any intermediate artefacts.
- If the **Import generated project to workspace** check box is selected, S-CASE will automatically import in the workspace the generated Web Service project each time the code generation engine is executed.
- The **Database** drop list provides the available database types options to select from.
- The **Database server address** field holds the full url to the database server through which the generated Web Service will handle its database.
- The **Database server port** field holds the port at which the database server expects incoming requests.
- The **Database username** field requires the username of the user account through which the generated Web Service will be able to access its database. It is important to note that the provided user account must have all the rights to create, update, read and delete a database and any relations it comprises. If the specified rights are not provided the generated Web Service will fail to function properly.
- The **Database password** field requires the password of the user account that will be used by the Web Service to interact with the specified database server.
<br>
It must be noted that OS environment variables can also be used in order to provide the desired username/password combination to the generated service instead of directly providing them. This way, the username and password credentials will not be hardcorded and searchable in any configuration file of the generated service. To do so, the S-CASE developer has to simply input in the corresponding fields the name of the environment variables e.g. ${DB_USERNAME} ${DB_PASS} and then the produced service will use these in the configuration. Finally, on deployment, the container invocation (e.g. Jetty) should be accompanied by these variables definition so that they will be available for the generated service. For example the S-CASE developer should type: "java -DDB_PASS=$DB_PASS -DDB_USERNAME=$DB_USERNAME -jar start.jar" in the case of a Jetty container, within the Jetty installation folder.
<br>

The rest check boxes configure the generation engine to pop up the required Wizards so that the S-CASE developer will be able to add more functionality other than a plain RESTful Web Service. The options are explained below:

<br>

- **Basic Authentication:** This option when checked, pops up the Basic Authentication Wizard when the code generation engine is executed. This Wizard allows the S-CASE developer embed wide-spread username/password authenticaiton to the generated Web Service.
- **ABAC Authorization:** This option when checked, pops up the Attribute Based Access Control Authorization Wizard, which allows the S-CASE developer to embed high level and fine grained authorization rules to his generated Web Service.
- **Database Searching:** This option when checked, pops up the Database Searching Wizard, which allows the S-CASE developer to select some resources of his envisioned Web Service that will embed wide-spread database keyword searching.
- **External Compositions:** This option when checked, pops up the External Compositions Wizard, which allows the S-CASE developer to model interactions of some resources of his envisioned Web Service with existing Web Services that are live on the internet, either created by the Service Composition Plugin of S-CASE or are 3rd party ones.
- **Database Migration:** This option when checkd, pops up the Database Migration Wizard which allows the S-CASE developer to model a mapping from an existing database to the new one that will be created once the generated Web Service is executed for the first time.

<br>

<img src="./codegen_images/codeGenerationPreferences.png" alt="Drawing" width="60%"/>

<br>

#### Running the Code Generation engine

<br>

Once the S-CASE developer is done with providing any Textual Requirements or Web Service Compositions using the other S-CASE eclipse plugins, it is time to run the Code Generation engine in order to produce the envisioned Web Service. To do so, there are two available options:

<br>

- **The Generate Code button:**  This option allows the S-CASE developer to start the Code Generation engine from scratch, namely to take as input the textual requirements and/or modeled Web Service Compositions. Note that this is the only available option in the first run of the Code Generation engine for an S-CASE project. This is the only available option in the case the S-CASE developer wants to make changes to his Textual Requirements and/or Service Compositions.
- **The Re-generate Code button:** The Code Generation engine embeds the required functionality to save the changes the S-CASE developer makes when using the Code Generation Wizards. This allows the Re-generate Code button to re-run the Code Generation Wizards, pre-filled with all the input the S-CASE developer has provided to it during the last Code Generation Engine execution. Note that in this case, any changes in the Textual Requirements and/or Service Compositions are ignored.

<br>

#### The REST editor

<br>

No matter what code generation preferences the S-CASE developer has selected in the corresponding configuration page, the first Wizard to pop up once the Code Generation engine is started  is the REST editor. This editor helps the developer to correctly model his envisioned RESTful service. Through this Wizard, the developer scaffolds the structure of the whole Web Service that can be later enhanced with more specific functionality using the rest Wizards. The components of this Wizard and their explanation follow bellow alongside two figures that illustrate its state in invalid and valid status:

<br>

<img src="./codegen_images/RESTWizardInvalidStatus.png" alt="Drawing" width="90%"/>

<br>

- **Error Notifications:** At the top of the Wizard the Code Generation engine displays error notifications to the developer in order to inform him about any invalid input that is detected by it. Such error notifications also provide a helpful tip to the developer on how to fix the detected error.
- **Resources:** In this section the wizard lists all the Web Service's resources. Once a resource is clicked the whole wizard page displays its details, namely input/output representations, CRUD API, properties and relations that are all explained later. A developer may create or delete a selected resource by clicking one of the Create resource or Delete resource buttons. If the user checks the Algorithmic option, then the selected resource will be treated by the Code Generation engine as one that runs some sort of custom algorithm rather than a plain data holder "CRUD Resource" that allows only the primitive Create, Read, Update and Delete actions on the specified modeled data it holds, as the REST architectural style specifies.
- **CRUD Activities:** This section lists the possible CRUD activities that a resource may have, conforming to the semantics of the common web HTTP API that REST commands, nameley the CREATE activity is used to create an instance of a resource, the READ to retrieve an existing one, the UPDATE to update an existing one and finally the DELETE activity to delete an existing resource. The Code Generation engine will automatically add any activity to the envisioned system that the developer has checked.
- **Input/Output media format:** This section allows the developer to select the desired input or output representation media format of the selected resource. The available representations are application/JSON and application/XML.
- **Properties:** This section lists all the properties of the selected resource. The developer may create new or delete existing ones by clicking the Create property or Delete property button.
- **Property Configuration:** This section provides the configuration details of the selected property. If the Collection option is checked then the property will be an Array, otherwise it will be a Java attribute of multiplicity one. From the Type list, the programmatic data type of the selected property can be defined. Finally, if the naming property option is checked, the envisioned system will use the value of this property for every resource list it sends to its clients for differentiation purposes.
- **Unrelated Resources:** This section lists all the detected resources that are not related to the selected resource.
- **Related Resources:** This section lists all the detected resources that are related to the selected resource. One may move one resource from one list to the other by clicking the button Add relation or Delete relation. Note that when such a relation from a resource A to a resource B exists, it should be translated as "Resource A has Resources of type B".

<br>

Once the developer makes any desired modifications using the REST Wizard and fixes any detected errors the Error Notification area becomes blank and the Finish button is enabled. By clicking the Finish button this Wizard is terminated and the code generation process begins or the next Wizard pops up depending on the code generation preferences. The following figure illustrates the REST wizard in its valid state.

<br>

<img src="./codegen_images/RESTWizardValidStatus.png" alt="Drawing" width="90%"/>

<br>

#### Basic Authentication Wizard

<br>

The Basic Authentication Wizard is the first to pop up after the REST Wizard, if the developer has configured the Code Generation engine to embed Basic Authentication. This Wizard comprises two pages. The first one follows below and has the following components:

<br>

- **Authentication Model:** This section lists all the available resources that can be used by the envisioned system as Authentication Models. Instances of this resource will contain authentication data during the execution of the envisioned system. Only CRUD Resources can be selected as Authentication Models, since they are the only type of Resources that have attributes.
- **Username Token:** Once a resource is selected as an Authentication Model, its attributes become available as possible username tokens. From this list, the S-CASE developer has to pick one property of the selected Authentication Model, that the envisioned system will use as username. The property to be used as username token must be of type String and of multiplicity one.
- **Password Token:** Once the S-CASE developer has selected a Username Token, the rest remaining attributes of the selected Authentication Model are available to be selected as Password tokens. The envisioned system will use this Password token for password data. The property to be used as password token must be of type String and of multiplicity one.

<br>

<img src="./codegen_images/AuthenticationWizardPage1.png" alt="Drawing" width="60%"/>

<br>

Once the developer successfully selects an Authentication model and its corresponding username and password tokens the Next button is enabled to proceed to the next Basic Authentication Wizard page. This page allows the developer to define the desired Authentication Mode for every CRUD activity of all the Web Service's Resources. Its components are the following:

<br>

- **Web Service Resources:** This section lists all the resources of the envisioned system. The developer has to select one authentication mode for every CRUD activity of each resource. Only once this is done, the Finish button is enabled.
- **Authentication Mode:** This section allows the developer to select the Authentication Mode for every CRUD Activity of the selected resource. If the All option is selected for a CRUD Activity, then both authenticated users and guests will be able to access its functionality, otherwise only authenticated users will have access to it.
- **Apply To All - One click Authentication:** This section provides a quick way to set-up the authentication mode of all the envisioned system’s CRUD Activities with one click. Hence, in order to allow All to access any CRUD Activity of the Web Service, one should select the All option and click the Apply to all button.

<br>

<img src="./codegen_images/AuthenticationWizardPage2.png" alt="Drawing" width="60%"/>

<br>

#### Database Keyword Searching Wizard

<br>

The Database Keyword Searching Wizard is triggered according to the Code Generation engine configuration either after the REST Wizard or the Basic Authentication one. This Wizard comprises the following components:

<br>

- **Available Resources:** The upper half of the wizard page comprises two lists. The left one lists all the available resources that could embed a database-searching algorithm. Since these resources will execute an algorithm, only algorithmic resources are listed as Available Resources. The right list contains the resources that are already marked as Search Resources. In order to move a resource from one list to the other, the S-CASE developer can click the Add or Remove button.
- **Create Search Resources:** The lower half of the wizard page allows the S-CASE developer to formulate a set of resources/properties that the selected Search Resource must be able to search by keyword. Hence, at the left list the developer has to select one resource, some properties of which must be searchable by the selected Search Resource. Then the next list provides its properties. The developer may add or remove such properties to the rightmost list of searchable properties by clicking the Add/Remove button. It must be noted that the developer is able to add any number/combination of searchable resources and properties to each Search Resource.

<br>

The following figure illustrates an instance of the Database Keyword Searching Wizard

<br>

<img src="./codegen_images/SearchWizard.png" alt="Drawing" width="60%"/>

<br>

#### External Service Composition Wizard

<br>

The External Service Composition Wizard is the last one to pop up, if the Code Generation engine is configured to embed such functionality. This Wizard comprises two pages. The first one allows the developer to model the external composition entpoint to be accessed by the generated service alongside its input/output. The second page is usefull only when there exists an attribute of the input and/or output model that is of complex data type. Such a case is explained in depth in the next section, Modeling Complex Datatypes. The following figure illustrates the first page of the External Service Composition Wizard, which comprises the following components:

<br>

- **Available Resources:** The Available Resources list, lists any algorithmic resources that are not already marked as Search resources. Any of these resources can be used as a RESTClient Resource so as the Code Generation engine automatically creates the required code in order to be able to interoperate with the specified external service.

- **RESTClient Resources:** This list on the other hand, lists any alogirthmic resources that are already selected as RESTClient Resources. In order to move resources between these two lists, one may use the Add and Remove buttons.

- **External Composition Setup:** This part of this Wizard contains the entpoint to be accessed information, namely its full URL, the CRUD verb to be used in order to interact with it as well as any required query parameters. The S-CASE developer is able to create, rename or delete such query parameters with the respective buttons.

- **Input/Output Data Model:** The input and output data model parts of the Wizard comprise the required fields in order to input any information regarding the expected input or output data to/from the external composition. For each case the media format has to be specified, which can be either application/JSON or application/XML. The developer must also specify any properties that will be included in the body of the request and their data type.

- **Persisting Output to local database:** When this check box is selected, the response of the external composition will be persisted to the web service's local database. In case there exists a CRUD Resource that fully models such a response it can be used by selecting the **"Existent"** type and then the resource at task. Otherwise, the **"Auto"** type creates automatically the required Java code and underlying database structures so as to persist the external composition responses.

<br>

<img src="./codegen_images/ExternalCompositionPage1.png" alt="Drawing" width="60%"/>

<br>

#### Modeling Complex Datatypes with the External Service Composition Wizard

<br>

In the case some input or output model attribute of a modelled external composition is selected to be of complex data type, the S-CASE developer will also have to model it using the 2nd page of the External Service Composition Wizard. This section demonstrates how S-CASE developers should model the interaction of their envisioned system with existing 3rd party Web Services that return JSON/XML output with complex data types. The following steps have to be followed.

<br>

##### Analyze External Composition output

<br>

The very first step should be really a manual query to the 3rd party web service in order to elicit the response structure that has to be modeled. For the shake of this example, lets assume that the 3rd party web service response is as the figure below illustrates (example taken from http://json.org/example.html):

<br>

<img src="./codegen_images/ExampleOfComplexType.png" alt="Drawing" width="60%"/>

<br>

The next step is the decomposition of the response to its components. So, by observing this response, the S-CASE developer should conclude that it comprises a complex object named “widget” of some unknown Class (let’s name it **ComplexTypeWidget**). As one may observe, this Class comprises four attributes, one of type String named “debug” and three other objects of some other unknown classes, named **“window”**, **“image”** and **“text”**. Each of these have the following properties:

<br>

**“window”:** Lets name the complex type of the object named “window”, ComplexTypeWindow. Then it is obvious that this complex type comprises:

<br>

-	“title”: type String
-	“name”: type String
-	“width”: type Integer
-	“height”: type Integer

<br>

**“image”:** Lets name the complex type of the object named “image”, ComplexTypeImage. Then its components are:

<br>

-	“src”: type String
-	“name”: type String
-	“hOffset”: type Integer
-	“vOffset”: type Integer
-	“alignment”: type String

<br>

**“text”:** Finally lets name the complex type of the object named “text”, ComplexTypeText. This one comprises:

<br>

-	“data”:  type String
-	“size”: type Integer
-	“style”: type String
-	“name”: type String
-	“hOffset”: type Integer
-	“vOffset”: type Integer
-	“alignment”: type String
-	“onMouseUp”: type String

<br>

##### Modeling the complex output with External Composition Wizard

<br>

Once the output of the target Web Service is analyzed, its time to model it with the External Composition Wizard. Once the UI appears, the desired algorithmic resource of the envisioned system, which will have to interoperate with the external composition service should be selected and added to the RESTClient Resources list. This is demonstrated in the figure below. In this case, we will use the resource named “externalServiceWithComplexOutput” as the one that will interoperate with the 3rd party service. Once it is selected, the S-CASE developer will have to fill in any other needed information like the 3rd party service’s URL, the CRUD verb to be used while interacting with it and any query parameters or input that it expects as described in the previous section. In this example, since the focus is on modeling complex output, the imaginary 3rd party Web Service does not require any input query parameters or input.

<br>

<img src="./codegen_images/ExtWizardPage1ComplexExample.png" alt="Drawing" width="60%"/>

<br>

Therefore, the next step is to model the output. As we have already concluded, the output of the Web Service comprises a complex type object named “widget”. Hence, we create an output property named “widget” and select “complex” as its type. In case the output model had more output properties of either primitive or complex type, they should also be added at this point. Once all the output properties and their respective data-types are defined the S-CASE developer may click on the “Next” button.

<br>

In the next page of this Wizard appears a list of the created RESTClient Resources. The S-CASE developer will have to define any complex data type of each such resource the way that is demonstrated in this example for the “externalServiceWithComplexOutput” resource.

<br>

The figure below illustrates the very first steps, once the desired RESTClient Resource is selected. The S-CASE developer should click on the create button and insert one by one all the complex type names that where detected previously. In this case, these names are ComplexTypeWidget, ComplexTypeWindow, ComplexTypeImage and ComplexTypeText. Then, each output property should be linked to one of these types. In this case the desired data type is the ComplexTypeWidget one.

<br>

<img src="./codegen_images/ExtWizardPage2ComplexExample.png" alt="Drawing" width="60%"/>

<br>

The final step is to define the properties of each complex type. These can be of primitive or of complex type as well. The following figure illustrates the complex type ComplexTypeWidget properties modeling. To model it, the S-CASE developer has to create its properties, while the ComplexTypeWidget is selected. In this case these are the “debug” property linked to String data type from the Available Types list, the “window” property of type “ComplexTypeWindow”, the “image” property of type “ComplexTypeImage” and the “text” property of type “ComplexTypeText”. Then the S-CASE developer, should click on the next complex types and add their properties as well, which have already been identified in the previous section and are all of type String and finally click on Finish.

<br>

<img src="./codegen_images/ExtWizardPage2ComplexExampleProperties.png" alt="Drawing" width="60%"/>

<br>

The produced service by the Code Generation engine will then automatically interoperate with the 3rd party service, decompose its output, store it in the local database, if so selected, and then repackage the output and send it to its client.

<br>

##### Final Notes

<br>

-	If the client needs only a subset of the output model, the rest properties (either of primitive or complex data type) can be omitted and not modeled in the Wizard.
-	However, (for time being) the developer has to make sure that the 3rd party service always returns the values of all the properties that are included in its output model through the External Service Wizard, otherwise it might not function properly.

<br>

#### ABAC Authorization Wizard

<br>

The ABAC Wizard allows the S-CASE developers to fine tune the authorization scheme of their envisioned RESTful service. Attribute Based Access Control (ABAC) is the available authorization scheme withing the MDE Engine of S-CASE and the implementation of it is loosely compatible with the XACML standard. Although this technical manual's goal is not to be a full blown tutorial neither for ABAC nor for XACML, before delving into the UI of the ABAC Wizard, it introduces the basic concepts of either.

<br>

##### Conditions

<br>

The ABAC authorization's building block is a condition. A condition is a test of an attribute value of the underlying system, against the value of another attribute of it. In terms of a RESTful system such attributes may belong to one of the following categories:

- **Resource properties**: that is properties of a resource as they are already modelled through the REST Wizard. From now on, this category will be referred to as "ACCESSED_RESOURCE".
- **Requestor properties**: such properties are properties of the entity that performs an HTTP request for a specific resource. This entity is modelled through the Authorization Model that is selected by the developer through the Authentication Wizard, hence conditions may be formed using the respective properties. This category will be referred to as "ACCESS_SUBJECT".
- **Contextual properties**: this is a more broad category and comprises the properties of related resources of the resource at which some sort of access is requested. That is, if in the REST Wizard there is a resource A that has as related resource the B, which in turn has resource C as its related resource, then contextual properties of A are only properties of Bs ("CHILD_RESOUCE"), contextual properties of B are properties of related As ("PARENT_RESOURCE") and Cs ("CHILD_RESOURCE") and the contextual properties of C are properties of related Bs ("PARENT_RESOURCE").

<br>

##### Rules

<br>

Such conditions, using the XACML structure, model **RULES**. Each RULE may have one or more conditions. A RULE may be of type PERMIT or DENY. If **all** the conditions of a PERMIT-RULE are satisfied then the rule yields permition to the ACCESS_SUBJECT, otherwise it is denied. On the other hand, in the case of a DENY-RULE, if **all** the conditions are satisfied then the rule denies permition to the ACCESS_SUBJECT, otherwise it permits it. One may think of a RULE, that regardless of its type, it performs a logical AND to the evaluation of all of its conditions in order to determine the authorization results. However, sometimes a RULE might not be applicable, e.g. the request demands "GET" access to a resource, but a specific rule does not include the GET allowed action, hence its evaluation will be NOT_APPLICABLE.

<br>

##### Policies

<br>

RULES in turn can be combined using **POLICIES**. A POLICY can group one or more RULES. This combination is the logical equivalence of OR among all the evaluation RULE results. Each POLICY has in turn a combining algorithm, which determines how the evaluation result of its constituent rule will contribute to the authorization result of the POLICY as a whole. In the MDE engine of S-CASE there are four such combining algorithmis:

- **PERMIT_OVERRIDES**: This combining algorithm has as a result that a POLICY which has at least one RULE that yields PERMIT after its evalutation, will also yield permition to the ACCESS_SUBJECT. If no RULES yield PERMIT and at least one yields DENY, then the POLICY will also yield DENY. Otherwise, it yields NOT_APPLICABLE.
- **DENY_OVERRIDES**: On the contrary, DENY_OVERRIDES combining algorithm has as a result that a POLICY which has at least one RULE that yields DENY after its evalutation, will also deny permition to the ACCESS_SUBJECT. If no RULES yield DENY and at least one yields PERMIT, then the POLICY will also yield PERMIT. Otherwise, it results to NOT_APPLICABLE.
<br>
However, there are cases, that the authorization designer, wishes to always have a POLICY evaluation to be either PERMIT or DENY. In this case, one of the following combining algorithims could be used:
<br>
- **PERMIT_UNLESS_DENY**: In this case, if *any* underlying RULE yields DENY, the whole POLICY evaluation will also be DENY. Otherwise, no matter if the RULES evaluate all to NOT_APPLICABLE or PERMIT, the POLICY outcome is going to be PERMIT.  
- **DENY_UNLESS_PERMIT**: On the contrary, the DENY_UNLESS_PERMIT combining algorithm, yields PERMIT if *any* underyling RULE yields PERMIT, otherwise if *none* of the rules yields PERMIT, the POLICY outcome will be DENY.


##### Policy Sets

<br>

As is modeled in the XACML standard, POLICIES can be grouped in POLICY_SETS so as to model even more complex authorization schemes. The evaluation logic however, still remains the same as in the POLICY/RULE case. That means that a POLICY_SET also has a combining algorithm, that can be one of the four aforementioned ones and this combining algorithm is used to mix the evaluation of the underlying POLICIES so as to determine the final POLICY_SET evaluation. If this is PERMIT then the ACCESS_SUBJECT is granted access to the requested system's resource. Otherwise the client will resource an HTTP 401 Unauthorized error code.

##### ABAC UI 

After explaining the conceptual building blocks of the ABAC authorization scheme, there follows the presentation of the ABAC UI of the MDE Engine of S-CASE. The following figure illustrates the initial UI once the ABAC Wizard pop ups:

<br>

<img src="./codegen_images/ABACInitialUI.png" alt="Drawing" width="90%"/>

<br>

- **Policy and Rule Navigation**: this pane contains a list of all the resources that have been modeled through the MDE Wizards.
- **Resource Configuration**: this UI section is displayed once a specific resource is selected. By checking the "Is an authorizable resource" checkbox, the developer defines that the generated service should perform ABAC checks when access to instances of this resource are requested. At the lower part of this section, the wizards allows the S-CASE developer to create more properties of the specified resource, on top of those that have been already created through the REST Wizard, in case the modeller wishes to use them specifically for authorization purposes. The system behaviour is exactly the same, no matter if a property is modelled in the REST Wizard or in thie ABAC UI section. This capability is provided to allow the developer to conceptually seperate functional properties from authorization ones.

<br>

The next Figure illustrates the POLICY_SET definition UI. Through this, the S-CASE developer can provide a suitable name and select the combining algorithm. The options are the four aforementioned ones. Additionally, the developer is able to create/delete nested POLICY_SETS and/or POLICIES.
<br>

<img src="./codegen_images/ABACPolicySET.png" alt="Drawing" width="90%"/>

<br>

Once a developer clicks the create policy button and selects the created policy the below illustrated UI appears. This allows the developer to configure the selected POLICY. That is provide a name, select one of the four aforementioned combining algorithms, create/delete nested POLICIES or underlying RULE. Moreover, one may model conditions that could only filter the ACCESS_SUBJECT that could be evaluated with the underlying rules. Such conditions are modeled the same way as will be demonstrated in the followign section.

<br>

<img src="./codegen_images/ABACPolicy.png" alt="Drawing" width="90%"/>

<br>

Finally, once the developer opts to create a RULE for the selected POLICY the core RULE/CONDITION modeling UI appears as is illustrated below:

- **Rule Name**: Through this field the developer can specify the desired name of the RULE.
- **Rule Type**: This dropdown menu allows the developer to select the desired RULE type, which can be as already discussed PERMIT or DENY.
- **Rule Conditions**: This part of the UI permits the authorization conditions definition of the specified RULE. Once the developer clicks on the "New" button, a new empty condition appears. As is illustrated, each such condition comprises two operands and one operator. 
- **Left/Right side operand**: Each operand (left or right) requires an Attribute Category, specifying the resource at which the desired Attribute originates and lastly specifying the attribute to be used as operand. The attribute categories are as already discussed the "ACCESS_SUBJECT", "ACCESSED_RESOURCE", "PARENT_RESOURCE", "CHILD_RESOURCE" ones. Additionally, the MDE Engine of S-CASE allows to create conditions to check the resources that are included in the PUT or POST request, which belong in the "INCLUDED_RESOURCE" category. 
-- **Operator**: the operator defines how the two operands can be tested. The available operands (depending on the selected attribute's multiplicity) are: EQUAL, NOT EQUAL, SUBSET, NOT SUBSET, REGEX (standing for regular expression), CONTAINS and finally NOT CONTAINS.

<br>

<img src="./codegen_images/ABACRule.png" alt="Drawing" width="90%"/>

<br>

##### ABAC Application Example

This section provides an extended example on how to model several authorization rules using the MDE Engine of S-CASE. For this example, RESTReviews, a simple web application will be used. This application comprises 5 resources, 3 of which are CRUD ones and consist of:

- **Account**: a resource that models user accounts that have a username, password, email and role.
- **Product**: this resource models products, which may have a title, an image, a category, a description and a status.
- **Review**: this resource models user reviews of products and comprises one rating, a title and a status.

<br>

For this example, the following authorization requirements are assumed:

<br>

- Everyone should be able to create an account, but not with admin role.
- All should be able to view products that their status is set to approved.
- Only the account owner should be able to read and update an account, but not set his role to admin.
- Only admins should be able to delete an account.
- Only admins should be able to update an account to have admin role.
- Admins should be able to get/update/delete products, regardless their status.
- Admins should be able to get/update/delete reviews, regardless their status.
- Only the user created the product should be able to update the product, but not set its status to approved.
- The product a user tries to create cannot have its status set to approved.
- Only the user created a review should be able to update it, but not set its status to approved.
- A user should not be able to create a review to a product he created.
- All should be able to view reviews that their status is set to approved 
- Posted reviews cannot have status approved.

<br>

Although the MDE Engine of S-CASE allows greate flexibility on how to design the required ABAC rules, one straight forward strategy is the following one.

###### Group Authorization Requirements per resource

The first step should be to group the authorization rules according to which resource they should provide access permission to. In this case once such groupping is:

<br>

**Account:**

- AR1: Only the account owner should be able to **read** and **update** an account, but not set his role to admin.
- AR2: Only admins should be able to **delete** an account
- AR3: Only admins should be able to **update** an account to have admin role
- AR4: Everyone should be able to **create** an account, but not with admin role.

**Product:**

- AR5: Only the user created the product should be able to **update** the product, but not set its status to approved.
- AR6: All should be able to **get** products that their status is set to approved.
- AR7: Admins should be able to **get/update/delete** products, regardless their status.
- AR8: The product a user tries to **create** cannot have its status set to approved.

**Review:**

- AR9: Only the user created the review should be able to **update** a review, but not set its status to approved.
- AR10: A user should not be able to **create** a review to a product he created.
- AR11: All should be able to **get** reviews that their status is set to approved 
- AR12: Admins should be able to **get/update/delete** reviews, regardless their status.
- **Posted** reviews cannot have status approved.


###### Create a "Root" Policy Set for every resource

For every resource that requires authorization, a root policy set should be added that has the appropriate combining algorithm, depending on wether the designer wishes to use positive or negative boolean logic. Since in this example the rules are going to be positive, all the root policy sets for every resource will have as combining algorithm the PERMIT_UNLESS_DENY one. This logic also implies, that policies will use PERMIT_OVERRIDES combining algorithm and the underlying rules will be PERMIT rules. The following figure shows the three root policy sets created.

<br>

<img src="./codegen_images/ABACRestReviewsRootPolicySets.png" alt="Drawing" width="90%"/>

<br>

###### Create Policies by grouping rules per CRUD verb **and** per type of ACCESS_SUBJECT

The next step is to create for every root policy set, the set of policies it comprises. Although there are limitless ways to model these policies, one straightforward way is to create a policy per CRUD verb (or set of verbs) per type of ACCESS_SUBJECT, that is policies that include rules that have an ACCESS_SUBJECT (authenticated user) or not. Ofcourse, sometimes it may be usefull to further split the rules that do have an ACCESS_SUBJECT to more policies for conceptual integrity and clarity reasons. The next figure illustrates the policies created for each root policy set.
<br>

<img src="./codegen_images/ABACRestReviewsPolicies.png" alt="Drawing" width="90%"/>

<br>

As the figure illustrates, following the aforementioned strategy there have been created the following policies:

**Account:**

- **getPolicy**: Since only authenticated users will be able to get accounts and only the owner of an account will be able to retrieve it, the GET HTTP verb requires just one policy for all the authenticated users that consists of all the rules that dictate when an authenticated user should be able to get an account.
- **upateAndDeletePolicy**: As in the getPolicy case, both PUT and DELETE HTTP verbs restricted to authenticated users, thus one policy for the authenticated users suffices. Moreover, due to the similarity of the Authorization Requirements for these two verbs, the corresponding rules for both of them are grouped in one policy.
- **createPolicy** This policy will include any rules that restrict users that are going to create policies. Since the restrictions enforced by the Authorization Requirements do not require ACCESS_SUBJECT conditions, once policy for all the users (guests and authenticated) suffices.

**Product:**

- **createProductPolicy**: The Authorization Requirements also dictate, that the only restriction on creating a product, is that its status attribute will not be set to "approved". Hence, once policy with any rules required for the POST HTTP verb that applies to all users suffices.
- **updateAndDeletePolicy**: This case is similar to updateAndDeletePolicy of the Account.
- **everyoneReadPolicy**, **adminReadProductPolicy**: The Get HTTP verb for products is however a bit of a different case though. On the one hand there is a rule regardless of the ACCESS_SUBJECT, since everyone should be able to access a product if it has status "approved". On the other hand, admins (so specific ACCESS_SUBJECTS) should be able to access them regardless their status. Hence, the ABAC rules for this case will be splitted to two policies, once will comprise the rules for universal access regardless the ACCESS_SUBJECT and the other will comprise the rules for admins.

**Review:**

The Review resource has about the same authorization requirements scheme as the Product one, hence it will have the corresponding policies: **updateAndDeleteReviewPolicy**, **createReviewPolicy**, **everyoneReadReviewPolicy** and **adminReadReviewPolicy**.

###### Create the required Rules for each Policy

The last step is to define the actual rules and their conditions for every of the defined policies. The description notation that will be used is LO(x) and RO(y) to represent the x and y Left/Right operand of a condition and O(z) that represents the operand z that will decide how x and y will be compared.

**Account:**
<br>
**getPolicy**: Since the requriment is that only the owner of an account should be able to get the account and assuming that the username of each user is unique, then this rules boils down to:
- **accountGetRule**: LO(ACCESS_SUBJECT.account.username) O(EQUAL) RO(ACCESSED_RESOURCE.account.username)". This rule is illustrated in the following figure. It translates to "One must be able to get an account if and only if his username is equal to the username of the account he is trying to get".
<br>
**upateAndDeletePolicy**: This policy must embed rules that satisfy AR2 and AR3 Authroziation requirements.
-**accountOwnerUpdateRule**: (LO(ACCESS_SUBJECT.account.username) O(EQUAL) RO(ACCESSED_RESOURCE.account.username))   **AND**  (LO(INCLUDED_RESOURCE.account.role) O(NOT_EQUAL) RO(CONSTANT.String."admin"))
-**adminUpdateDeleteRule**: LO(ACCESS_SUBJECT.account.role) O(EQUAL) RO(CONSTANT.String."admin")
<br>
**createPolicy**: 
- **createAccountRule**: LO(INCLUDED_RESOURCE.account.role) O(NOT_EQUAL) RO(CONSTANT.String."admin")

<br>

<img src="./codegen_images/ABACGetAccountRule.png" alt="Drawing" width="90%"/>

<br>

**Product:**
<br>
The rules for each policy of the Product resource are as follows.

**createProductPolicy**: 
<br>
- **everyoneCreateProductRule**: LO(INCLUDED_RESOURCE.product.status) O(NOT_EQUAL) RO(CONSTANT.String."approved")
<br>
**updateAndDeletePolicy**: 
<br>
- **ownerUpdateRule**: (LO(ACCESS_ACCOUNT.account.username) O(EQUAL) RO(PARENT_RESOURCE.account.username))  **AND** (LO(INCLUDED_RESOURCE.product.status) O(NOT_EQUAL) RO(CONSTANT.String."approved"))
- **adminUpdateDeleteRule**: LO(ACCESS_SUBJECT.account.role) O(EQUAL) RO(CONSTANT.String."admin")
<br>
**everyoneReadPolicy**:
<br>
- **everyoneReadProductRule**: LO(ACCESSED_RESOURCE.product.status) O(EQUAL) RO(CONSTANT.String."approved")
<br>
**adminReadProductPolicy**: 
<br>
- **adminReadProductRule**: LO(ACCESS_SUBJECT.account.role) O(EQUAL) RO(CONSTANT.String."admin")
<br>

**Review:**
<br>
Finally, the rules for the Review resource policies are the following.
<br>
**updateAndDeleteReviewPolicy**:
<br>
- **ownerUpdateReviewRule**: (LO(ACCESS_SUBJECT.account.username) O(EQUAL) RO(PARENT_RESOURCE.account.username))  **AND** (LO(INCLUDED_RESOURCE) O(NOT_EQUAL) RO(CONSTANT.String."approved"))
- **adminUpdateReviewRule**: LO(ACCESS_SUBJECT.account.role) O(EQUAL) RO(CONSTANT.String."admin")
<br>
**createReviewPolicy**:
<br>
- **createReviewRule**: (LO(ACCESS_SUBJECT.account.username) O(NOT_EQUAL) RO(PARENT_RESOURCE.account.username)) **AND** (LO(INCLUDED_RESOURCE.review.status) O(NOT_EQUAL) RO(CONSTANT.String."approved"))
<br>
**everyoneReadReviewPolicy**:
<br>
- **everyoneReadReviewRule**: LO(ACCESSED_RESOURCE.review.status) O(EQUAL) RO(CONSTANT.String."approved")
<br>
**adminReadReviewPolicy**:
<br>
- **adminReadReviewRule**: LO(ACCESS_SUBJECT.account.role) O(EQUAL) RO(CONSTANT.String."admin")
<br>

##### Final Notes
<br>
It must me noted however, that the specification of such authorization scheme is a logic riddle. If the authorization design provides conflicting rules with inappropriate combining algorithms, it could lead to yielding permission to users that should not. Therefore, it is always a good practice to logically test each policy set, policy and the respective rules evaluation against several types of requests per type of ACCESS_SUBJECT and/or HTTP verb.
<br>
#### Database Migration Wizard

<br>

The Database Migration Wizard is triggered at the end of the modelling process with the Code Generation Wizards. This Wizard comprises the following components as the following figure illustrates :
<br>

<img src="./codegen_images/DBMigrationWizard.png" alt="Drawing" width="90%"/>

<br>

- **DB URL:** The DB URL UI control requires the complete URI to the source database server from which the migration will take place. The S-CASE developer must provide the IP:Port pair e.g. localhost:3306.
- **DB Type:** The DB Type list allows the S-CASE developer to select the type of the source database. The supported types are MySQL and PostgreSQL.
- **DB Username:** The DB Username control requires the username with which the Code Generation Engine will connect to the source database. It must provide the appropriate rights so that the Code Generation Engine can list and read the required source database.
- **DB Password:** The DB Password control requires the password for the provided username that will be used to connect to the source database.
- **DB Name:** The DB Name is the name of the source database.
- **Source Database Relations:** The Source Database Relations control lists all the detected relations of the source database, once the S-CASE developer clicks the Fetch DB Schema button.
- **Available CRUD Resources:** The Available CRUD Resources control lists all the CRUD Resources that the S-CASE developer has created in the REST Wizard.
- **Created Relations Mappings:** The Created Relations Mappings control lists any source relation to CRUD resource mappings that the S-CASE developer has created. Such mappings provide the Code Generation engine with the required information to know from which source relation it should fetch data in order to fill in the target database relation of the selected CRUD Resource. The S-CASE developer may select any combination of source relations - CRUD resources, but each combination must be unique.
- **Source Relation Columns:** The Source Relation Columns control lists all the detected columns of the selected mapping source relation.
- **CRUD Resource Properties:** The CRUD Resource Properties control lists all the properties of the selected mapping CRUD resource that the S-CASE developer has modelled in the REST Wizard.
- **Created Column Mappings:** Once the S-CASE developer selects a source column and a target property and clicks the Add Mapping button, a new Column Mapping is created and added to the Created Column Mappings list. Such mappings provide the Code Generation Engine with the required information as to which source column data to migrate to which target CRUD Resource property.

<br>

##### Source Database Prerequisites

- The source database must contain valid referencial keys for any 1 to N relationship it comprises.
- In case the source database comprises also M to N relationships, it must provide appropriate JOIN Tables. Hence, JOIN Tables must have all the required foreign keys to the corresponding relations primary keys **and** have as primary key the combination of the aforementioned foreign keys.
<br>

##### Remarks on Database Migration process

- The Source Relations are not required to have the same name with the target CRUD resources.
- The Source Columns are not required to have the same name with the target properties.
- The Source Relations and Columns may be used in mutliple mappings should this is desired.
- In case there exists a mapping to a CRUD resource that is related resource of some other CRUD resource, another mapping is also required from the "parent" source relation to the the parent CRUD resource of the specified mapping.
- In case the S-CASE developer has also opted to use the Database Keyword Searching functionality, the code generation engine will index during the migration the old data, hence it is going to be searchable the desired in the generated Web Service.

<br>

##### Performing the database migration:

In order to perform the actual database migration once the Code Generation Engine has finished executing the S-CASE developer will have to do the following:

<br>

- Navigate to the output folder of the specified project.
- In the output folder the Code Generation Engine places a new maven project named as <ProjectName>DBMigrator. The S-CASE developer will have to compile the specified maven project using the "mvn package" command.
- Then executing the generated java application the actual migration will take place. Indicative invocation from command line once in the top project folder: "java -jar target/<ProjectName>DBMigrator.jar"
- If the S-CASE developer opted to include Database Search functionality, the generated Lucene indexed will be added in a folder named <ProjectName>LuceneIndexes. The S-CASE developer must copy this folder and paste it in the webapps folder of the underlying Jetty/Tomcat application and the start the envisioned Web Service.

<br>

<br>

#### Handling M to N relationships of CRUD resources.

<br>

A Web Client that interaccts with a generated Web Service of S-CASE can utilize the extended PUT Web API of each CRUD resource in order to add more relations towards parent or child resources of the specified one. The extended PUT Web API comprises the following query parameters:

<br>

- **strOptionalUpdateRelations:** This query parameter specifies wether the generated service should update the underlying CRUD resource's relationships or not. Should the client wishes to add/remove a relationship to/from the underlying CRUD resource, it should set this query parameter to the **string value "true"**. Otherwise, it should be set to false or not included at all.
- **strOptionalUpdateParent:** This query parameter specifies wether the generated service should update the parent or child relationships of the underylying CRUD resource. Should the client wishes to add/remove a relationship to/from an existing parent resource, it should set this query parameter to the **string value "true"**. Otherwise, if it wishes to add/remove a relationship to/from an existing child resource, it should set this query parameter to the **string value "false"**.
- **strOptionalRelationName:** The strOptionalRelationName query parameter requires the name of the CRUD resource to which a relationship will be added to/removed from the underlying one.
- **strOptionalAddRelation:** This query parameter specifies wether the generated service will add or remove a relationship to a parent/child resource of the underlying CRUD resource one. Should the client wishes to add a relationship, it should set this query parameter to the **string value "true"**. Otherwise, if it wishes to remove a relationship of the underlying CRUD resource it should set this query parameter to the **string value "false"**.
- **iOptionalResourceId:** The iOptionalResourceId query parameter requires the Integer value of the id of the parent/child resource to be included to the relationships of the underlying CRUD resource.

<br>

More information on the Model Driven Engineering process:

<br>

- [Webinar on the S-CASE MDE engine](https://youtu.be/YuyeZlMW8_Y)
- [Demos of using the MDE engine through the S-CASE plugin](https://youtu.be/DFoeUFUlBDI)
