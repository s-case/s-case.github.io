## Release Notes

### Version: 1.17

_Date of release: 18/10/2016_
- Fixed the ordering of dashboard groups and buttons. GitHub [entry](https://github.com/s-case/s-case-core/commit/ea22bf18820db1ad1c758899a7cbcc6e86ac69fa)
- Modified REST clients to accept SSL certificates. GitHub [entry1](https://github.com/s-case/s-case-core/commit/9f191278f58ca40eb68d39387d0d3b13ad183c2f), [entry2](https://github.com/s-case/web-service-composition/commit/26322d59d47c449130dec90e1dcc5235ec1ca4a0), [entry3](https://github.com/s-case/web-service-composition/commit/fdd87c3863d458dd24b3e7b0c33c2f0d431b78ba), [entry4](https://github.com/s-case/web-service-composition/commit/2c95b149586521ad6c08baf2f4287c4248fb1877)
- Added checks in requirements editor for the case that UML diagram objects do not have names. GitHub [entry](https://github.com/s-case/requirements-editor/commit/075b12cbdaa7e8f87e622e5f69983b580f272ef8)
- Made ontology instantiation functionality safer. GitHub [entry1](https://github.com/s-case/storyboard-creator/commit/8c8b141abb4adf5909105cea1f4fb0d57dcca7a6), [entry2](https://github.com/s-case/storyboard-creator/commit/8ee7f22b6b6a75c67d6507db4097574197a5ee39), [entry3](https://github.com/s-case/uml-extraction/commit/8d70a7b0b36f51c12e292c79fd74819cb36419a4), [entry4](https://github.com/s-case/uml-extraction/commit/05dd43016b76275fab45e4a0bbcbfc5693380a4d)

### Version: 1.16

_Date of release: 13/9/2016_
- Fixed 4 compilation errors of the generated service that occured in some complex scenarios. Github [entry](https://github.com/s-case/mde/commit/d3079e87fd89cda7a27a35014889f77509803da8),[entry1](https://github.com/s-case/mde/commit/62a3bd1aac48ab844b9ef2320f7b50908c0d2358)
- Fixed an error in Authentication Wizard, introduced in July with the sorted lists update. Once this update is installed, check out the authentication mode for every CRUD activity and fix accordingly. Github [entry](https://github.com/s-case/mde/commit/8a2787333779b0cc4b3be605e233a8ec73507363)
- Upgraded  the MDE engine to be able to produce services that also handle M-N relationships between resources. Github [entry](https://github.com/s-case/mde/commit/d914bb48233a7d33898393ca0330127447f02d0d)
- Updated the Migration layer to be able to handle source databases that have 1-N and M-N relationships. Github [entry](https://github.com/s-case/mde/commit/d914bb48233a7d33898393ca0330127447f02d0d)

### Version: 1.15

_Date of release: 30/8/2016_
- Store Control Tower tokena and secret securely. GitHub [entry](https://github.com/s-case/s-case-core/commit/d2172217843064478856b97c7e8002d5bd4034a3)
- Add database migration option. GitHub [entry1](https://github.com/s-case/mde/commit/dd7e567ccbf92f4fc8a85686e32dec3b160997d6), [entry2](https://github.com/s-case/mde/commit/62a4cb8b4f20b8ff2177dd2565d911ecbbb70541), [entry3](https://github.com/s-case/mde/commit/2537648d81a15fbf60882675ff67852f74e156e8), [entry4](https://github.com/s-case/mde/commit/8a9c59e48426661faf2bd63e9728661fb778a39e), [entry5](https://github.com/s-case/mde/commit/5fd7767d3ca02d5402924bd88faf77ed82d6b194)
- Link to ControlTower on S-CASE toolbar (static). GitHub [entry1](https://github.com/s-case/s-case-core/commit/a00bb04a8d84b21f47b715b626cb00e9a47ec050)
- Make enhancements in the UI dialogs and view of SC plugin. Github [entry1](https://github.com/s-case/web-service-composition/commit/15c4ef67c4fa36a3f0316d6b93cc7da75ee8a008), [entry2](https://github.com/s-case/web-service-composition/commit/f253bd39a336349373796f36faedf7c3b95b310e), [entry3](https://github.com/s-case/web-service-composition/commit/c086de2d8279c37e35eb1094f96c66f68e65680e), [entry4](https://github.com/s-case/web-service-composition/commit/3196a580dc22afacab7ffe0f20b9b43628aa37af), [entry5](https://github.com/s-case/web-service-composition/commit/18b1a7150bf90b16ba179f8aee44fcf881036fc0), [entry6](https://github.com/s-case/web-service-composition/commit/00747387672fbad178ab8438416118f99e973e79)
- Add colour preferences for SC workflow nodes. [entry](https://github.com/s-case/web-service-composition/commit/3a341a655695a260efe08f3cc267b0648b8ebf22)
- Add feature for the generated composite service. Services that have primitive inputs matched with array elements, can be called more than once. The number of calls is specified by the user and is limited by the array size. [entry1](https://github.com/s-case/web-service-composition/commit/ef3d228a9baa802bd0d0b643e83deadeedda1c95), [entry2](https://github.com/s-case/web-service-composition/commit/b2d96fd4d1b310f46b94cd30f282f55fa1af3393)
- New version of UML extractor that connects to UML Server for the image conversion. [entry](https://github.com/s-case/uml-extraction/commit/776a2d367e3f854694cdd39998d85f95b77caa06)
- UML plugin refactoring  to have Papyrus support to be optional. [entry](https://github.com/s-case/uml-extraction/commit/a3e7ff09092975ef82b5019f4f2ff6a6ba14a595)
- Produce xmi that is papyrus compliant and automatically generate the papyrus model if papyrus plugin is present. [entry1](https://github.com/s-case/uml-extraction/commit/8c6e7be0c7b39f2db690edb7fff6bdbef6768a65), [entry2](https://github.com/s-case/uml-extraction/commit/1020da00e6b51dca475e985564bff0c45c00f783), [entry3](https://github.com/s-case/uml-extraction/commit/684151b3c47afb75b3e9defeedd111129c3ef122)
- Implemented assets registry requests. GitHub [entry1](https://github.com/s-case/s-case-core/commit/559a56d892236898e1638fb2847089c032494712), [entry2](https://github.com/s-case/s-case-core/commit/b908b8aeb22a107840be4943e41c3f8b569a7577), [entry3](https://github.com/s-case/s-case-core/commit/7a3e1a821121967c41130be724aac5549e7d6f22), [entry4](https://github.com/s-case/s-case-core/commit/e6de8f720a2ab1a49894d2c297e4b93c4350a964), [entry5](https://github.com/s-case/s-case-core/commit/7391148b2cfd3963da94ed77d66913f9b6757f64), [entry6](https://github.com/s-case/s-case-core/commit/71de83c5ac4862b006db8e30845eba8050e278d9), [entry7](https://github.com/s-case/s-case-core/commit/ec2928ceeed1513ef0f3c4b467975e3c569cc693), [entry8](https://github.com/s-case/s-case-core/commit/c5f39c787a1a71a9d250e41f9d6b2c4c26db38ec), [entry9](https://github.com/s-case/s-case-core/commit/c03fa833773340caeb0113958c72b430b97f655f), [entry10](https://github.com/s-case/s-case-core/commit/ca0cb0e29af92d244fcfafcbf304d61e07474b60), [entry11](https://github.com/s-case/s-case-core/commit/d6deb58ff6ab8acf122273a90979ba01cf21a716), [entry12](https://github.com/s-case/s-case-core/commit/4b6448fea1240ea707cd3c1aa7087ee839fcc250)
- Add secure storage of Control tower preferences. GitHub [entry1](https://github.com/s-case/s-case-core/commit/d2172217843064478856b97c7e8002d5bd4034a3), [entry2](https://github.com/s-case/s-case-core/commit/990fcdc1d80d5eaddcacb53e9062e0d1a6b04b1b), [entry3](https://github.com/s-case/s-case-core/commit/626fa32ef5bf111a9d8ff59649f884e17c77874d), [entry4](https://github.com/s-case/requirements-editor/commit/ba109d0b0416c1f3ad988dab823311f94e9ae65d), [entry5](https://github.com/s-case/requirements-editor/commit/36544e77109993cdd452a20c772b5cd5952cc6f6)
- Improve the sorting of contributions for groups and buttons. GitHub [entry1](https://github.com/s-case/s-case-core/commit/57478b55f215d760ae48530e60b69bdb55b24713), [entry2](https://github.com/s-case/s-case-core/commit/b27cf5ada2147561751d1156695641927ed755d3), [entry3](https://github.com/s-case/s-case-core/commit/a79e06ab2923f45afac03dbbb15f322bb5a98a80), [entry4](https://github.com/s-case/requirements-editor/commit/382082892961a176e79e7ef97854121b5d99d73a), [entry5](https://github.com/s-case/storyboard-creator/commit/b3ea27428f5ea40312fa9967bf741c35c8c9ce1c), [entry6](https://github.com/s-case/uml-extraction/commit/94a470ed1eb4425d531431674bdf81eb24fd09ec), [entry7](https://github.com/s-case/web-service-composition/commit/2571a9d1388047b18e40ef7c5c41381d92a05a20)

### Version: 1.14

_Date of release: 24/6/2016_
- Refactor of Dashboard to have each module contribute its own buttons. GitHub [entry1](https://github.com/s-case/s-case-core/commit/775298dcc9a168e71b100d517da3c807cde11267), [entry2](https://github.com/s-case/s-case-core/commit/378aeb4f811ba5d352d0a60b0318fd247f62b7db), [entry3](https://github.com/s-case/s-case-core/commit/61b85d07590ae3fb72e3429f82f3c53136db8ad0), [entry4](https://github.com/s-case/s-case-core/commit/61b85d07590ae3fb72e3429f82f3c53136db8ad0), [entry5](https://github.com/s-case/mde/commit/9518c4ced1d36036f527cd5a14135b834ae50d7b), [entry6](https://github.com/s-case/mde/commit/00818fe0b63553760a82f28abd30fc88c42077bd), [entry7](https://github.com/s-case/mde/commit/435065f89f8f52936414a68e9a8c46f15159244e), [entry8](https://github.com/s-case/mde/commit/f496f68d8a9259d9f57b9dd23c324ce33e0a8c26), [entry9](https://github.com/s-case/requirements-editor/commit/b91f6ffbe1fc500c1f1442a70d86f8031ec99103), [entry10](https://github.com/s-case/requirements-editor/commit/db0d6a0e06365039d4760ac056c3d0a8c9d04407), [entry11](https://github.com/s-case/storyboard-creator/commit/9f95a7dfb9a2ebaf54b4082f42a3b0554f41f731), [entry12](https://github.com/s-case/storyboard-creator/commit/60af534ef044dd3d803332be5a7faa5a9b9f3429), [entry13](https://github.com/s-case/uml-extraction/commit/2e55439cb9ff60f18ec0ef3ec4c90c34c7275cca), [entry14](https://github.com/s-case/web-service-composition/commit/a0b05a7544f6b26a26887addabf24691fc3d424d), [entry15](https://github.com/s-case/s-case-update-site/commit/2156ea8f8b675cc9cf152aa8f8c4c5aab51d7161),
[entry16](https://github.com/s-case/s-case-core/commit/f677972e72ae42c98ef36d53222c250c75cdae27)
- Disable Dashboard buttons when no S-CASE project is selected. GitHub [entry](https://github.com/s-case/s-case-core/commit/7db6d5479c25c5916d249e4f781212b85b8fd0e8)
- Made folder location retrieval safer for project folders. GitHub [entry1](https://github.com/s-case/s-case-core/commit/60e00395d8ac87b44515282dc806b05b66629344), [entry2](https://github.com/s-case/mde/commit/78397212126f1651dd6c9addfad3ed126bbc738f), [entry3](https://github.com/s-case/storyboard-creator/commit/bdc0c7533d533128d5580d22bb859f80ddd9ab4a), [entry4](https://github.com/s-case/requirements-editor/commit/69a08676ca13ec295819374d5c9e1c7fd0ab0f19)
- Update project configuration using maven after regenerating code. GitHub [entry1](https://github.com/s-case/mde/commit/e1560b22fcf1f84395cc16a417f87bf9f7405463), [entry2](https://github.com/s-case/mde/commit/28d5e2c851113bb380be3e43b59ad95c0a4be50b)
- Open MDE wizard dialogs to the center of the screen. GitHub [entry](https://github.com/s-case/mde/commit/4def29c23c2e34dd946a0592acd5db1edfe0f4af)

### Version: 1.13

_Date of release: 10/6/2016_
- Fix for displaying correctly the first annotation in Requirements Editor. GitHub [entry](https://github.com/s-case/requirements-editor/commit/c88fc85d740f2d91ec64f12e2d8e3b4ced34a35b), OpenProject [issue](https://openproject.scasefp7.com/work_packages/199)
- Fix for supporting multi-word annotations from NLP component. GitHub [entry](https://github.com/s-case/requirements-editor/commit/d1700f8778ec817dbdd6fb4746842133923758e1), OpenProject [issue](https://openproject.scasefp7.com/work_packages/194)
- Fix for save as functionality of storyboards. GitHub [entry](https://github.com/s-case/storyboard-creator/commit/52bfae3289775511c77fd54e956e31e1e93a9c50), OpenProject [issue](https://openproject.scasefp7.com/work_packages/193)
- Released ABAC plugin for the MDE module. GitHub
[entry](https://github.com/s-case/mde/commit/ebfc3f142911b42c7388d08ecfd409ee4dcb0560), OpenProject [issue](https://openproject.scasefp7.com/work_packages/130)
- Fixed a bug that lead to many compilation errors when the S-CASE developer designed a resource, some parent resource of which had also
multiple parent resources. GitHub
[entry](https://github.com/s-case/mde/commit/ebfc3f142911b42c7388d08ecfd409ee4dcb0560)
- Fixed a bug that allowed the S-CASE developer to create CRUD resources without Create or Read activities. GitHub
[entry](https://github.com/s-case/mde/commit/ebfc3f142911b42c7388d08ecfd409ee4dcb0560)
- Fixed a UI bug that lead to improper resource property datatype display, when the property datatype was anything else other than
String, Integer or Double. GitHub
[entry](https://github.com/s-case/mde/commit/ebfc3f142911b42c7388d08ecfd409ee4dcb0560), OpenProject [issue](https://openproject.scasefp7.com/work_packages/200)
- Fixed a UI logic bug, that allowed the developer to select invalid combinations of CRUD Activities and intput/output models. GitHub
[entry](https://github.com/s-case/mde/commit/3d9b2ed811b1c3878b77ae7bc9b97911c7e902a0), OpenProject [issue](https://openproject.scasefp7.com/work_packages/208)
- Created a new client for SC for uploading the composite web service to the S-CASE server in order to use HTTP connection instead of SFTP. GitHub [entry](https://github.com/s-case/web-service-composition/commit/6bb0ddec8d5a0bd3dc425798054fe6791d1dad0e)
- Added support of variable matching between array elements in SC plugin. GitHub [entry](https://github.com/s-case/web-service-composition/commit/21fac7d5084f1ecababf24f1920a98aba5152d85),  [entry2](https://github.com/s-case/web-service-composition/commit/069339462d7be8bad74cca3036de477d93cbde4f)
- Added support for handling output variables that don't always have the same type (are either array or object) in SC plugin. GitHub [entry](https://github.com/s-case/web-service-composition/commit/f2c663e7ff9ede82a76d3ba44ba1a79b53ea2dca)
- Added a dialog for the user to choose the appropriate opperation for replacement in the workflow in cases of equal probability (SC plugin). GitHub [entry](https://github.com/s-case/web-service-composition/commit/8a687e485d05090a815f7111930e571f49e1fb53)
- Improve performance in SC plugin by loading operations when service composition view opens or when a new ontology is downloaded and not every time the user creates a new composition. GitHub [entry](https://github.com/s-case/web-service-composition/commit/d0cab6394b4ce57cc85e57f9f06e14fd45890531)


### Version: 1.12

_Date of release: 10/5/2016_

- Enabled the UML plugin and connected it to the workflow. GitHub [entry1](https://github.com/s-case/s-case-core/commit/fb28396b492306ba2f2f6597b70c2ae299bd36a4), [entry2](https://github.com/s-case/s-case-core/commit/6a2905ebdbbd5eff7ecb69b6112c1b51a1224d75)
- Created a unified category for the wizards of all plugins. GitHub [entry1](https://github.com/s-case/requirements-editor/commit/b014ac7f8de838f3ad4269ba24cea216804acb21), [entry2](https://github.com/s-case/storyboard-creator/commit/8bf29106126edc6320b772b430c11248818cc535)
- Changed service composition plugin dialogs to be more comprehensive. GitHub [entry](https://github.com/s-case/web-service-composition/commit/77f63591a323c4ecf98ab41e8d3edced5d208f02)

### Version: 1.11

_Date of release: 26/4/2016_

- Added new service composition command to instantiate the linked ontology. GitHub [entry1](https://github.com/s-case/web-service-composition/commit/90b26e9135bae3ab72aaf9c33d947cb22c35feed), [entry2](https://github.com/s-case/web-service-composition/commit/544ca250f3e4378b9c0e725188b5400c082cf156), [entry3](https://github.com/s-case/web-service-composition/commit/11c6ceeac7694fec01147cee1fc89a32a078989d), [entry4](https://github.com/s-case/s-case-core/commit/34b423a85d666e8949edeabb03140afc0c5cea24), [entry5](https://github.com/s-case/mde/commit/77db918d3dcf2384284e888899f6b2dbb30464d3)
- Added cservice file to support instantiating the linked ontology. GitHub [entry1](https://github.com/s-case/web-service-composition/commit/512afc6455fda7e5ef06a3ad0e5f82e1599d61e6), [entry2](https://github.com/s-case/web-service-composition/commit/247ba98e78f909fd2e2d82ffe9ad684e9ca2bd56)
- Added tracing for code generation command. GitHub [entry](https://github.com/s-case/mde/commit/74fe530784ec5791cfc3dd2f6503164735053000)
- Added fix for invalid diagram filenames. GitHub [entry1](https://github.com/s-case/storyboard-creator/commit/a0cc1f3673fe0e34433a48992ca2a441061b5fb8), [entry2](https://github.com/s-case/uml-extraction/commit/f5e93e6d6548ff5386050ddd0320358af050a43b)
- Added fix to avoid errors when UML diagrams are not annotated. GitHub [entry1](https://github.com/s-case/uml-extraction/commit/831265750ff7f97d8c636ae67da5726192603938)
- Hide menu commands used for debugging. GitHub [entry1](https://github.com/s-case/s-case-core/commit/57e6402774c0bf9b7437a70cd35dfc3a1b907046), [entry2](https://github.com/s-case/requirements-editor/commit/ce0b6fbb520a4f0843df5235b7ca1183f95f7850), [entry3](https://github.com/s-case/storyboard-creator/commit/e670e69923071e6513bdd7e6b28b134dbada94c8), [entry4](https://github.com/s-case/web-service-composition/commit/3c6c0b76222777d9cf0f59dc65241c8312aeff2b)

### Version: 1.10

_Date of release: 19/4/2016_

- Fixed a bug that allowed developers to name resources or their properties using Java reserved keywords or invalid characters that both lead to compilation errors. Github [entry](https://github.com/s-case/mde/commit/ba57acbf965a3cf6e45cbe1b225673750d35d2ee) 
- Added new supported datatypes for the resource properties. Now the MDE engine supports the following datatypes: String, Integer, Double, Float, Long, Boolean, Date all of which can be used as naming properties as well. Github  [entry](https://github.com/s-case/mde/commit/e10f8d7a6f2b77c93e1978940eefaa9f89c8b224).
- Updated the code template for the POM.xml generation so as to use java 1.8 and UTF-8. [entry](https://github.com/s-case/mde/commit/dba8ae51e7ae83fe9a0b3e51c93c913480a039e8)
- Fixed a UI Bug issue that occurred only in Linux environment. In specific when a user clicked to add a resource/property or rename any existing ones an empty persistent window appeared. Github [entry](https://github.com/s-case/mde/commit/bdb11b2f0b58db46008c1af9d171a223d69cfa20)
- Fixed an issue that caused the MDE engine to crash when the input YAML file is empty. Moreover the MDE Wizards do not allow developers to finish the plugin without providing any resources. Github [entry](https://github.com/s-case/mde/commit/74ac7f04600f489dd4726890fff728d7a16d5665)
- Added fix for parsing storyboards with consecutive conditions. GitHub [entry](https://github.com/s-case/storyboard-creator/commit/4eb6778908f8f0ab3c245608d823594ad6151def)

### Version: 1.9

_Date of release: 11/4/2016_

- Added properties for the location of the folders of the S-CASE project folder structure. Github [entry1](https://github.com/s-case/s-case-core/commit/9d15f3942452211d77d337b58434d6481c58c374), [entry2](https://github.com/s-case/s-case-core/commit/6497125cfa12f13a16f51fb43607536aa4913aaf), [entry3](https://github.com/s-case/s-case-core/commit/c3e1cbdb82d3cefed62596c81b54f43abfbf2331), [entry4](https://github.com/s-case/s-case-core/commit/e857a260194cc2ee817949b6deda243efbcfeb96), [entry5](https://github.com/s-case/s-case-core/commit/1827bae551be5969013a6d7b7e1ad56ccc793d08)
- Added properties tabs to the Eclipse properties view showing project's configuration (domain, folders, codegen settings). Github  [entry](https://github.com/s-case/mde/commit/f2140bfae377f06e0527834b6976f44a1bfb3d78).
- Added support for importing and calling operations with complex input data types in Service Composition [entry1](https://github.com/s-case/web-service-composition/commit/223e1fcf77faf05cf08bd4e6f892a8b017222e63), [entry2](https://github.com/s-case/web-service-composition/commit/3cdf272daaacedd2f7aa08dc459db7c53f865216).

### Version: 1.8

_Date of release: 24/3/2016_

- Made folder structure safer by checking the renaming/deleting of folders. Github [entry](https://github.com/s-case/s-case-core/commit/24fe86aefc48669192e2e4879505f0952fec8855)
- Project artefact structure is presented in Eclipse navigation. Github [entry1](https://github.com/s-case/s-case-core/commit/a81c1f81c42684253f94d049c2e6eb34ca652b80), [entry2](https://github.com/s-case/s-case-core/commit/36377621adb603c5f42d59472e1a9d8972a5f6dc),
[entry3](https://github.com/s-case/s-case-core/commit/064355853de92387fe5f4b593c125b5a170a7f0e),
[entry4](https://github.com/s-case/s-case-core/commit/c2ab63e7f5143a863be2f8eecd17b11019a8f3c3)

### Version: 1.7

_Date of release: 21/3/2016_
_See [here](/migrationguide.html) for migrating projects from version 1.6_

- Fixed a bug that caused an exception to be thrown by the MDE Engine Search Wizard, even if nothing was wrong. Github [entry](https://github.com/s-case/mde/commit/ab70a2b774707b8d60f6c1e8da71b5ea45173274)
- Fixed a bug that allowed the S-CASE developers to create resource relations that originate from algorithmic resources. This is not allowed any more. Github [entry](https://github.com/s-case/mde/commit/c4afe0ee19721d64992606ccec40bdd5bb8225d0)
- Fixed a bug that lead to compilation errors of envisioned systems when the S-CASE developer did not chose the naming property of a Resource to be of type String. Now all the available data type properties of resources can be used as naming properties. Github [entry](https://github.com/s-case/mde/commit/425fdc53862699e03a75c0992173619fd6b73915)
- Fixed a bug that allowed developers to create CRUD resources without CREATE or READ activities. Github [entry](https://github.com/s-case/mde/commit/833546043a219eb169f8f2aa243a0ab669904133)
- Fixed a bug that caused the production of invalid Hypermedia links (due to double // in the links), that originated from incoming HTTP requests that ended with the / character. Github [entry](https://github.com/s-case/mde/commit/d10703f78dabc1efd60cdcd678da7fe151d9c619)
- Fixed a bug that allowed S-CASE developers to use as resource property names, names that are MDE reserved keywords leading to compilation errors. Github [entry](https://github.com/s-case/mde/commit/1e00f1fb66043f1beeaa02ac6e0baf430e2eca39)
- Fixed a bug that caused the produced services to be unable to correclty create the underlying web service database, when the S-CASE developer named some resource or some resource property using an SQL reserved keyword. Github [entry](https://github.com/s-case/mde/commit/c6661cc4708013b31eff5c221a7a7c052a5bdff5)
- Fixed a bug that caused the produced web services by S-CASE to become unresponsive uppon receival of a keyword search request that contained some Lucene or SQL reserved keyword. Github [entry](https://github.com/s-case/mde/commit/3bac33ad50a068876100c41cc0e49020068c03be)
- Add project folders creation to New project wizard. Github [entry1](https://github.com/s-case/s-case-core/commit/0c10118a0953d50279dbb130f48dcb9a29689a4b), [entry2](https://github.com/s-case/s-case-core/commit/54dc73ca485abdeac6c9c6a99c29f759f4b260c2), [entry3](https://github.com/s-case/s-case-core/commit/4d5bd42e098404a0d9c25aed44359c5d58ba9c84), [entry4](https://github.com/s-case/s-case-core/commit/c6c47053317f37e831c421587ffc3147d30dd25d), [entry5](https://github.com/s-case/s-case-core/commit/cde8cb8618e17935142ac35156561cb9cfddf949)
- Add support for project folders to requirements editor. GitHub [entry1](https://github.com/s-case/requirements-editor/commit/9182d6c0b13702f4af7ec5023ca91ae53e0660f7), [entry2](https://github.com/s-case/requirements-editor/commit/dc7a1894f8c996bab3f15f095fa172b84459ed49), [entry3](https://github.com/s-case/requirements-editor/commit/98c2fbe4b8918424adec3fcf6729b61bb39ace91), [entry4](https://github.com/s-case/requirements-editor/commit/dde3ea4c12b596c1e9305de2db6f12be87ba9fb7)
- Add support for project folders to storyboard creator. GitHub [entry1](https://github.com/s-case/storyboard-creator/commit/20e53d8f9d15f9468f34b1f793c35ce73adab393), [entry2](https://github.com/s-case/storyboard-creator/commit/b0d6ef86988009f3f7977bad458e01334b68bcce), [entry3](https://github.com/s-case/storyboard-creator/commit/09a74f03401d4c29db8ea5f53065bb009b31b7d3), [entry4](https://github.com/s-case/storyboard-creator/commit/a5862f5d87e07b4ba50c1efa41b092eb08ce150e)
- Add support for project folders to MDE. GitHub [entry1](https://github.com/s-case/mde/commit/ba1acdf9703736f7dece31ecf60c9066576f73f3), [entry2](https://github.com/s-case/mde/commit/4b502fe3d56d10d915f243c41f0296ef7272d102), [entry3](https://github.com/s-case/mde/commit/f6fd0deaefb0d5f8b6eaf587a561e86102f1b64f), [entry4](https://github.com/s-case/mde/commit/01abb66b5b030e714d24b7808633c96282ef25af), [entry5](https://github.com/s-case/mde/commit/eea8bd56df0ee486594b388bb1d6923a995f211b), [entry6](https://github.com/s-case/mde/commit/d1b7f9de5281de91e3e5d2b8805fc9d9f73cd299), [entry7](https://github.com/s-case/mde/commit/ff0800c60407addfba2e5977786684d6ab18bfc5)
- Fixed a bug that prohibited importing generated maven projects. Github [entry](https://github.com/s-case/mde/commit/a6a2530d5a54917cda26b647bcd9b88589cbdae2)

### Version: 1.6

_Date of release: 19/2/2016_

- Added logging functionality to Requirements Editor. GitHub [entry1](https://github.com/s-case/requirements-editor/commit/52bf81b9b358f1cfc2af5b9225b9d43d55c9022b), [entry2](https://github.com/s-case/requirements-editor/commit/8ce2b61779b9804b4ae62c3c7f0e1efa0df8cbda), [entry3](https://github.com/s-case/requirements-editor/commit/cbcd3d21baf153716906fa3bc43cf21d453f7f00)
- Added logging functionality to Storyboard Creator. GitHub [entry1](https://github.com/s-case/storyboard-creator/commit/5e7a29204fa9a89161778bcf56b524695cdc4492), [entry2](https://github.com/s-case/storyboard-creator/commit/e85dd016a18092f46cc485b2940497f55e584054), [entry3](https://github.com/s-case/storyboard-creator/commit/414f874ea3fab819d37c1c56890ba3de4fbb9bb9), [entry4](https://github.com/s-case/storyboard-creator/commit/168ba7179e9bc04b4e20b67b593ee259f05e6ce4), [entry5](https://github.com/s-case/storyboard-creator/commit/54a6f815d6086b2fa060b7a16d5bbbd87f3a5188)
- Added logging functionality to Web Service Composition. GitHub [entry1](https://github.com/s-case/web-service-composition/commit/214eeec7fce52601ad81c3168cd418675147b016), [entry2](https://github.com/s-case/web-service-composition/commit/1553ced5460ffb882968bce3bb6733524ed1e6bb), [entry3](https://github.com/s-case/web-service-composition/commit/e4b012856b085e31c16038db39011ddb6e35b8bd)
- Enriched exceptions within the MDE engine code and added the corresponding logging functionality. GitHub [entry](https://github.com/s-case/mde/commit/f09d676f4dd8edf7d8d3398b39b47f43db8f021f).
- Added functionality for saving and loading composite workflows as files (.sc). GitHub [entry](https://github.com/s-case/web-service-composition/commit/cf7238b8f0f3c850242a7b75857ef145d72682f7). OpenProject [feature](https://openproject.scasefp7.com/work_packages/90)
- Add debug tracing to Dashboard. Github [entry](https://github.com/s-case/s-case-core/commit/9535c8bac04c3d05fa6041a2da8b6b6202b3e116).
- Add logging functionality to Core. Github[entry1](https://github.com/s-case/s-case-core/commit/d06cba76fd2c3b62973b204f039bac609376d227), [entry2](https://github.com/s-case/s-case-core/commit/a554c5e3d4f090f57fe38912eee223d9452656da), [entry3](https://github.com/s-case/s-case-core/commit/fb3c7c84c825a3579f823712db62ffc2c2525c00)
- Dashboard is simplified, OpenProject [issue](https://openproject.scasefp7.com/work_packages/118), Github [entry](https://github.com/s-case/s-case-core/commit/affdc64ad50f72212677962b97f02cdb3b09a7d0)
- Generate code step includes all compilation steps. Github [entry](https://github.com/s-case/mde/commit/47539fb61e1f2dea57b91841ed38b3a28a236402).
- Add an option to automatically import generated Maven project. Github [entry1](https://github.com/s-case/mde/commit/06d82b115977b34ea1b18fdf785a8a9be7234d2b), [entry2](https://github.com/s-case/mde/commit/19273a49f9d8c428a1c2a320d32807f167c2a8a4), [entry3](https://github.com/s-case/mde/commit/20837c6f832e664caf0db499edca5bd679a0baa2).

### Version: 1.5

_Date of release: 27/1/2016_

- Fixed the External Composition MDE graphics in Windows OS. Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Fixed an issue that occurred when a searchable resource's name had at least one capital letter and lead to compilation errors.
- Fixed an issue that lead to loading the wrong core CIM XMI file once the re-generate button was clicked (2nd run logic of MDE). Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Fixed an issue that occurred when the user clicked the re-generate button and renamed a resource or property, which were used in the Authentication model, just by capitalizing (or the opposite) some letters and lead MDE to crash. Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Fixed an issue that occurred when MDE unexpectedly crashed and made the internal YML file uneditable without Eclipse restart. Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Fixed an issue that lead the MDE engine to always produce services that used the same database. Now MDE creates a database that is named as the provided Web Service name. Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Added support for "Long" datatypes in the External Composition MDE Wizard. Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Added support for MySQL databases. At the moment the supported databases are MySQL and PostgreSQL. The user has to provide the MDE engine with a valid database user that has the rights to: CREATE a database and perform all actions on it (INSERT, SELECT, DELETE, UPDATE) Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Added canceling support for all the MDE Wizards. Github [entry](https://github.com/s-case/mde/commit/168b4f326ca20fe65f7d20ea30cf5e1592e874bd)
- Added support for distinguishing web service composition storyboard diagrams from requirements storyboard diagrams. Web service composition storyboard diagrams are now given the extension .scd, while requirements storyboard diagrams keep the extension .sbd. GitHub [entry](https://github.com/s-case/storyboard-creator/commit/7f44a7c10f68bb7438bcd32f617ce386eae5bacb)
- Fixed bug for reloading the .rqs file when it is changed. OpenProject [issue](https://openproject.scasefp7.com/work_packages/114), GitHub [entry1](https://github.com/s-case/requirements-editor/commit/baa4cf98f2bf25ac9917da8665ce55e69a0b4d5f), [entry2](https://github.com/s-case/requirements-editor/commit/ee8b5f3cf81fe07814d6984831d8dd0f6bf1baf5)
- Added support for making the generated composite web service available on YouREST, after deployment, for Web Service Composition plugin. Github [entry](https://github.com/s-case/web-service-composition/commit/ddf0603555841540787aabf03dadde69a30bdf33)
- Disable S-CASE menu for the importation of storyboard files and have a button in the dashboard instead. OpenProject [issue](https://openproject.scasefp7.com/work_packages/111)
- Give more information to the user when manually importing operations or adding conditions in the workflow of Web Service Composition plugin. OpenProject [issue](https://openproject.scasefp7.com/work_packages/101), OpenProject [issue](https://openproject.scasefp7.com/work_packages/103)
- Dicreased the size of the generated web service of Web Service Composition plugin (in the case that it is composed of RESTful web services). Github [entry](https://github.com/s-case/web-service-composition/commit/a0724daf84c1acd8113ca644b3ff0362bbd73fcd)
- Added support for version 8 for the generated web service project runtime java version of Web Service Composition plugin. Github [entry](https://github.com/s-case/web-service-composition/commit/3f8df9c0e6f2bf6c017c8040757cdaa60b19bd6d), OpenProject [issue](https://openproject.scasefp7.com/work_packages/89)
- Added support for downloading the web services ontology for Web Service Composition plugin, when there is a new version, inside .metadata/.plugins folder instead of the workspace folder, so that it is not exposed to the user. Github [entry](https://github.com/s-case/web-service-composition/commit/bf7463d568323858644a9aaef493b9ab530bb019), OpenProject [issue](https://openproject.scasefp7.com/work_packages/91)
- Fix for situations of bad internet connection when downloading the ontology or invoking web services for Web Service Composition plugin. Github [entry](https://github.com/s-case/web-service-composition/commit/7c107c84c3d2f6f4f5425d70cf49a79ad74f9656), Github [entry](https://github.com/s-case/web-service-composition/commit/c9559f6eb53f53f28643fb9a24aafd7836a0833f), OpenProject [issue](https://openproject.scasefp7.com/work_packages/99)

### Version: 1.4

_Date of release: 4/12/2015_

- Added support for complex data types handling to the MDE External Service Wizard. GitHub [entry](https://github.com/s-case/mde/commit/7b9452bf00f088952ae2f5bc8f3308c236ec7c67)
- Added support to load any existing composition produced by CERTH's service composition tool to the projects linked ontology. The compositions are available for any desired editing through the MDE External Service Composition Wizard. GitHub [entry] (https://github.com/s-case/mde/commit/7b9452bf00f088952ae2f5bc8f3308c236ec7c67)
- Added commands for instantiating the ontologies GitHub [entry1](https://github.com/s-case/s-case-core/commit/571b5614bd543cfe0e0df78baead414827618c16), [entry2](https://github.com/s-case/s-case-core/commit/6646d431dc810dfaca760eaabdeb5e59db4e72dc), [entry3](https://github.com/s-case/s-case-core/commit/e28c3bc88298d2860276b7c4604ae73e25a01cd3), [entry4](https://github.com/s-case/requirements-editor/commit/c3462f20f78cdb65fe865e7fc2514f18fceae53d), [entry5](https://github.com/s-case/storyboard-creator/commit/cda13dd0ab0ad4189f7359004d20973a8c131e23)
- Refined the exported YAML and created default values to allow less clicks in MDE CIM wizard GitHub [entry1](https://github.com/s-case/s-case-core/commit/b075255b5bde6fbb32de114bb04e0e9476179098), [entry2](https://github.com/s-case/s-case-core/commit/a3070cfcb5c4595bad8d161089d51116b30cc4bd), [entry3](https://github.com/s-case/s-case-core/commit/9cadf6816f649d6dc1b1bdf3f37f7c10d88de7fe), [entry4](https://github.com/s-case/s-case-core/commit/23660b752e73eda920ddba15afdbc4d83e232249)

### Version: 1.3

_Date of release: 30/11/2015_

- Added support for retrieving external WS information from the Linked Ontology API GitHub [entry](https://github.com/s-case/s-case-core/commit/4b441d9f7ae84b0163c47aa4772fd9bf666ba6ed)
- Added support for exporting external service resources to the YAML file GitHub [entry1](https://github.com/s-case/s-case-core/commit/0dc26ff25a818bfc47d921d9277fe07df094c332), [entry2](https://github.com/s-case/s-case-core/commit/4409a5cfaf39ad403f1809e48e1f3ae058efe5d4), [entry3](https://github.com/s-case/s-case-core/commit/a3fe9c5a5d8e81ae7ca853b53d18573b05d4b39f), [entry4](https://github.com/s-case/s-case-core/commit/0a81cd2d8562f6b787c4c0ed8a53ee70998d8072)
- Fixed bug for loading related resources in the linked ontology correctly GitHub [entry1](https://github.com/s-case/s-case-core/commit/47b37b4037de862ccf371c0c15c3a04dd6304704), [entry2](https://github.com/s-case/s-case-core/commit/1574b62179549edb79f15b639ece23e9640d83b2)
- Service Composition Update. Support of web services with array and complex type response.
- Service Composition Bug Fixing. Fix passing of matched output values to matched inputs and fix handling of decision nodes. Commit on both service composition issues:  [github](https://github.com/s-case/web-service-composition/commit/fd99def5cb4d70d612dba3c5cbec8c251df3152a)

### Version: 1.2

_Date of release: 24/11/2015_

- MDE UI Update. Now the Core CIM Wizard of MDE allows the S-CASE developer to rename Resources and Properties. The openproject issue can be found [here](https://openproject.scasefp7.com/work_packages/19) and the github entry [here](https://github.com/s-case/mde/commit/8fd9bdd45e83fb5b17cde6cf0536f4b33db91cf3)
- MDE bug fix. The S-CASE developer cannot select as Naming Property a Property that is collection anymore. [opernproject](https://openproject.scasefp7.com/work_packages/30) and [github](https://github.com/s-case/mde/commit/6b279902686191ef6e7bea111850b83abf784df5)
- MDE bug fix. The MDE engine produces now code without duplicate local variables in the "deleteAllCollections" function in any case. Previously, should there exist multiple Collection attributes, the result was several local variables with the same name which resulted in building failure. [opernproject](https://openproject.scasefp7.com/work_packages/30) and [github](https://github.com/s-case/mde/commit/6b279902686191ef6e7bea111850b83abf784df5)
- MDE bug fix. Now the MDE engine produces the correct code when some resources have attributes that are Sets of Integers or Doubles. This does not apply to the modeling of the input/output of external services. That will be fixed in the next release. [opernproject](https://openproject.scasefp7.com/work_packages/30) and [github](https://github.com/s-case/mde/commit/6b279902686191ef6e7bea111850b83abf784df5)
- Web Service Composition Update. Now the WSC plugin supports (HTTP GET) RESTful web services with Basic Authentication. [opernproject](https://openproject.scasefp7.com/work_packages/50) and [github](https://github.com/s-case/web-service-composition/commit/95cf8bfce0073b88fa341df0e7a01a6d1da70096)
- Web Service Composition Update. Now the WSC plugin supports the connection of the generated RESTful web services to the MDE Ontology (LinkedOntology). [github](https://github.com/s-case/web-service-composition/commit/5737b3d8be6e6a059e7cd58e51e9a4d8c55f712b)
- Web Service Composition Update. New ontology repository, including RESTful services, is used. [github](https://github.com/s-case/web-service-composition/commit/41c1e079c5e8cd3305a9e207da9c58eb033dfda7)
- Created functionality for stemming noun constructs (e.g. "virtual machines" is stemmed as "virtual machine"). Open-project [issue](https://openproject.scasefp7.com/work_packages/68) Github [entry](https://github.com/s-case/s-case-core/commit/8a1d15b0c147327556b9c0bf64dbccd7588c9d7d)
- Updated dynamic ontology API to be more robust in case of erroneous annotations. GitHub [entry](https://github.com/s-case/s-case-core/commit/ea7d0ee7d8bd21db8daebf89b7789e966e94287a)
- Minor update in stemmer noun extensions. GitHub [entry](https://github.com/s-case/s-case-core/commit/aa78eed866936f50cfc0cc737dec9bfee50a8ea6)

### Version: 1.1

_Date of release: 16/11/2015_

- Minor UI Update. Changed the "Unique" check box button logic from the Core CIM Wizard and External Service Composition to "Collection". When the "Collection" check box is checked the corresponding property will be an Array, otherwise of multiplicity 1. Corresponding open-project [issue](https://openproject.scasefp7.com/work_packages/52) Github [entry](https://github.com/s-case/mde/commit/8a4cd32aa08c8b94d27d0bea552c0057a56b3624)
- UI Wizards Logic Update. Update the validation checks of all the MDE Wizards. With these updates, the S-CASE developer is promted to create the appropriate minimum number of algorithmic resources, depending on his project preferences. For example, if the "Searching Functionality" is checked in the project preferences, the S-CASE developer will no longer be able to finish the CIM Wizard step, unless he creates at least one algorithmic resource. In the same manner, the Search CIM Wizard and the the External Services CIM Wizard perform the corresponding checks and do not allow the developers to create more or less resources of the corresponding type than they should. Corresponding open-project [issue](https://openproject.scasefp7.com/work_packages/30) Github [entry](https://github.com/s-case/mde/commit/b040c942f057cbef31ef38efa3761ca1fbe37bc7)
- Web.xml update. Changed the servlet mapping url pattern from `<url-pattern>/*</url-pattern>` to `<url-pattern>/api/*</url-pattern>`. That allows S-CASE developer to also add the client application in the same folder. Open-project [issue](https://openproject.scasefp7.com/work_packages/59) Github [entry](https://github.com/s-case/mde/commit/1b90c0624608d4cc76eb4616d0b502ab05f4d085)
- Moved Lucene indexes location. Moved the produced Lucene indexes location (if the S-CASE developer opted to add Searching functionality) to a new folder named as `[WebServiceName]LuceneIndexes` instead of simply `WebServiceName`. This resolves an issue that sometimes occured when a newer version of the .WAR file is pasted in servlet's webapp folder, which resulted in overriding of the existing Lucene indexes, thus Search resources would no more include previously added data to their query results sets. Github [entry](https://github.com/s-case/mde/commit/008af915507895a583f851f512737741f847938c)
- Code Generation 2nd run logic. This is a major update that allows S-CASE developers to select to re-rerun the "Generate Code" functionality by taking as input the ecore models produced in the previous MDE run. This pretty much drastically reduces the amount of work the S-CASE developer has to do when he simply wants to make modifications to his previous work. It must be stressed out that this does not apply to modifications to Requirements/Storyboards etc. For the time being, this is supported for anything edited through the MDE Wizards. Example applications of 2nd run logic: An S-CASE developer builds a first version of his system but then realizes that should also add Authentication. This can from now be done by simply adding the new Authentication input. All the other Wizards will be restored to their previous state. Another example is adding new resources, or modifying existing ones, removing functionality layers or performing any update. In any case the Wizards will reload any data that is still valid after any modifications done by the S-CASE developer. Open-project corresponding [issue](https://openproject.scasefp7.com/work_packages/51) Github [entry](https://github.com/s-case/mde/commit/845c5055e6c4ebf14882c99836033783c5179d0d)
- Fixed bug of Web Service Composition plugin, relevant to reading a property file. Open-project corresponding [issue](https://openproject.scasefp7.com/work_packages/60) Github [entry](https://github.com/s-case/web-service-composition/commit/4e52ee7167dc09c83ce731760fd67cc4022ed02d)
- Added support for annotating UML use case and activity diagrams in Requirements Editor. Github [entry](https://github.com/s-case/requirements-editor/commit/e87fa602eb85a77a038aa80f86873b8945dbd71a)
- Fixed bug related to saving storyboards in Storyboard Creator. Github [entry](https://github.com/s-case/storyboard-creator/commit/1650a97e3cc5f41c892fa5981ed714219c3e07f8)
- Set new defaults for the YAML representation exported by the linked ontology. Github [entry 1](https://github.com/s-case/s-case-core/commit/c02b46420ad2c349b3be2b97914ddd2d3a7f687f) [entry 2](https://github.com/s-case/s-case-core/commit/0d9994204daba20ed0bc392dc7a99928e26c6759) [entry 3](https://github.com/s-case/s-case-core/commit/8a0d09c050c441e9d1fbbad66d52e58d88b7d7be)
