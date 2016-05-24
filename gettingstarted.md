### Getting started

<br>

#### Installation

Your first step is to install the S-CASE Eclipse plugin:

1. Download & start Eclipse IDE
2. Select the menu item Install new software...
3. Add as a new remote repository the URL: https://eclipse.scasefp7.com/eclipse/s-case_update_site/

<br>

#### The Dashboard
The dashboard is a view in Eclipse. It consists of buttons organised in four groups: **Design**, **Mashup**, **Code** & **Run**.

<br>

<img src="./gettingstarted_images/dashboard.png" alt="Drawing" width="80%"/>

**Design** has the buttons for requirements, storyboards and mashup creation:

- The `Create requirements` button, will create a new .rqs file in a given container (either project or folder). That file can be modified using the *Requirements editor*, for more details see the [corresponding section](https://s-case.github.io/webbook.html#3) or its [manual](https://s-case.github.io/manuals/Requirements%20Editor%20User%20Manual.pdf).
- The `Create storyboards` button will create a new .sbd file in a given container. *Storyboard creator* works with such files, its documentation can be found in the [corresponding section](https://s-case.github.io/webbook.html#3) or its [manual](https://s-case.github.io/manuals/Storyboard%20Creator%20User%20Manual.pdf).
- The `Create mashups` button will create a new mashup, i.e. a storyboard for denoting the requirements for composing web services existing in the system.

<br>

**Mashup** group has only one button: `Create service composition`. It uses a given mashup storyboard and creates a web service composition from it.

<br>

**Code** group has two buttons: generate code and regenerate code.
- The `Generate code` button opens a form in which we can specify the settings for code generation.
- The `Regenerate code` button will perform code generation using the previous settings.

<br>

**Run** group has a single button: `Deploy on YouREST`. It opens the *Deploy wizard* which gives instructions on how to start the generated web service.

<br>

#### Project creation wizard

To create a new S-Case project, select S-Case Project from the New project wizard.

<img src="./gettingstarted_images/newProject0.png" alt="Drawing" width="50%"/>

On this page you need to provide a project name, which has to be unique in the workspace.
You can also use the default location for the project or select a different one in the filesystem.

<img src="./gettingstarted_images/newProject1.png" alt="Drawing" width="50%"/>

Now you can select a project domain for the project from the provided list.

<img src="./gettingstarted_images/newProject2.png" alt="Drawing" width="50%"/>

Next, this page allows you to set the folders which will be used to organise the project.

<img src="./gettingstarted_images/newProject3.png" alt="Drawing" width="50%"/>

They will contain the models, generated code, requirements and storyboards. You can select the existing folders or generate new ones.

<img src="./gettingstarted_images/newProject3b.png" alt="Drawing" width="50%"/>

<br>

#### Project properties
To see the project properties, right click on a project > Properties, and then select S-Case category on the left. The first page has some useful links about S-Case.

<img src="./gettingstarted_images/projectproperties1.png" alt="Drawing" width="50%"/>

Code generation page configures the settings for code generation. By default, those are the same as specified in the workspace settings. When you want to provide the project-specific settings mark the checkbox.

<img src="./gettingstarted_images/projectproperties2.png" alt="Drawing" width="50%"/>

Here you can change the project domain.

<img src="./gettingstarted_images/projectproperties3.png" alt="Drawing" width="50%"/>

On this page you can configure the project folders.

<img src="./gettingstarted_images/projectproperties4.png" alt="Drawing" width="50%"/>

<br>

#### Preferences

S-Case preferences have 3 sections: Code generation, Infrastructure services and Requirements editor.
Code generation page is similar to the one in Project properties. Infrastructure services page holds the various URI-s used for those services.

<img src="./gettingstarted_images/preferences1.png" alt="Drawing" width="50%"/>

Requirements editor preference page enables you to change the colors used in the Requirements editor.

<img src="./gettingstarted_images/preferences2.png" alt="Drawing" width="50%"/>
