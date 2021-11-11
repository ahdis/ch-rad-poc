<div markdown="5" class="dragon">
    <p>
    Work in progress, DRAFT, has to reviewed
    </p>
</div>  
<div style="clear: left" />


The UseCase describes the different steps in the Proof Of Concept for connecting two independent organisations with their installations which contain each an own FHIR server and a PAC's system which are connected by an intermediary system which is deployed within each organization.

1. Placing a radiology order according to [ch-rad-order](http://fhir.ch/ig/ch-rad-order/index.html) with added references to previous imaging studies
2. The radiology order and the corresponding imaging studies are transferred form the Placer to the Filler by the intermediary
3. From the Filler a pdf report and previous studies are returned and the intermediary transports the results back

Placer App:  WebApp with own FHIR Server
Placer Pacs: Studies for patients

Intermediary: Transfers Orders, PDF Reports and Imaging Studies between Placer and Filler in both directions 

Filler:  Connects to FHIR server for receiving orders, connect toback and system, result
Filler Pacs: Studies for patients

<div>
{%include uc_1.svg%}
</div>
<div style="clear: left" />

**excluded or out of scope from proof of concepts (PoC)** 

system not intended for production use, only for test setup because of the following reasons:
- user management / authentication / authorization for this PoC: the PoC is to demonstrate the technical feasibility
- recipient selection: we will use a fix placer and filler configuration, how to extend to multiple recipients is out of scope for this PoC, the architecture however has been setup to support multiple recipients
- integration of PACS into Placer App: adding the Study Instance ID's directly is to demonstrate the technical feasibility

The architecture uses the [FHIR Task](http://hl7.org/fhir/task.html) resource to coordinate the workflow between the different systems. The Task go trough the [states](http://hl7.org/fhir/task.html#statemachine) ready - in-progress and completed.

### Create Radiology Order with references to previous imaging studies [01] 

The Implementation Guide [ch-rad-order](http://fhir.ch/ig/ch-rad-order/index.html) defines a general purpose [radiology order questionnaire](http://fhir.ch/ig/ch-rad-order/questionnaire.html). For this Use Case we define a subset of the general purpose questionnaire, and add the questions necessary for linking the previous Imaging Studies. The questionnaire is defined [here](Questionnaire-QuestionnaireRadiologyOrderPoC.html). Questionnaire Items and the corresponding maps will be provided for the ch-rad-order ig, see [issue 17](https://github.com/hl7ch/ch-rad-order/issues/17).

The FHIR Server is configured with the [ch-rad-order](http://fhir.ch/ig/ch-rad-order/index.html) and dependent Implementation Guides. This allows the Placer Application to request different Radiology Orders (Questionnaires). In addition the FHIR Server needs to support [StructureMap-based extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html#map-extract).

The Placer Application allows a User to select the order type (questionnaire). He can save a temporary order and can complete it at a later time. If the order is finished the Order will be transformed to the [CH RAD-Order Document](http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-document) with the [StructureMap-based extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html#map-extract) on the FHIR Server.

The RAD-Order document will be stored on the FHIR Server as a [FHIR Bundle](http://hl7.org/fhir/bundle.html).

The Placer App creates a Task Resource on the FHIR Server with the focus referencing the FHIR Bundle. If the order contains references to
the previous Imaging Results, they are also added as additional input elements. 

[Example order represented as a task](Task-task-order1.json.html) with referencing the bundle and imaging source. Status of the task is set to ready.

### Get new radiology order [02]

The Intermediary polls for new tasks (as an alternative it could also create a subscription) with the following query:

```
GET {{host}}/Task?status=ready&_lastUpdated=gt2021-10-27T14:56:59+02:00  HTTP/1.1
```

The Intermediary retrieves [the task information](Task-task-order1.json.html)) and updates the status to in-progress if it can handle the task.
(The intermediates needs to check if he can handle the task between the the sender and receiver. The receiver is added in as a restriction.recipient identifier (gln) is provided, the sender is available in requester identifier).

The Intermediary gets the corresponding [Bundle](Bundle-bundle-order1.json.html) and [ImagingStudy](ImagingStudy-imagingstudy-order1.json.html).

Note: The Intermediary needs to check that he is not the requestor of the task.

ImagingStudy resources could be contained, however it has been proposed that ImagingStudy should be handled in Input and Output same as DocumentReference and be managed on the FHIR server.


```
GET {{host}}/Task?status=ready&_lastUpdated=gt2021-10-27T14:56:59+02:00 HTTP/1.1
GET {{host}}/Task/task-order1 HTTP/1.1
GET {{host}}/Bundle/bundle-order1 HTTP/1.1
GET {{host}}/ImagingStudy/imagingstudy-order1 HTTP/1.1
GET {{host}}/ImagingStudy/imagingstudy-order2 HTTP/1.1
```

Update the status, lastModified and owner via PATCH operation or [update the complete Task](Task-task-order1-inprogress.html) via PUT

```
PATCH {{host}}/Task/task-order1 HTTP/1.1
Content-Type: application/json-patch+json

[ 
    {  "op": "replace", "path": "/status", "value": "in-progress" },
    {  "op": "replace", "path": "/lastModified", "value": "2021-10-27T15:46:34+02:00" },
    {  "op": "add", "path": "/owner", "value": { "identifier":   { "system" : "urn:oid:2.999.1.2.3", "value" : "tbd" },  "display": "Intermediary" } }
]
```

### Get referenced previous Imaging Studies [03]
### Transfer Order and Imaging Studies [04]
### Store previous Imaging Studies [05]

These steps are done directly with the intermediary and the PACS and are not described here.

### Create Radiology Order [06] 

The intermediary creates a [new Task](Task-task-order1-filler.json.html) on the Filler FHIR Server together with the [Radiology Order]((Bundle-bundle-order1.json.html) and [ImagingStudies](ImagingStudy-imagingstudy-order1.json.html). The requester of the Task is the Filler Intermediary. The task provides also the original identifier as an identifier.

1. Step by Step: POST Bundle, Imaging Study and Task on Filler FHIR Server and do the linking yourself in Task resource to the respective Bundle and ImagingStudy yourself

2. Post a [transaction Bundle will all Resources](Bundle-order1-filler-transaction.html) together to the Filler FHIR Server

```
POST {{host}}/ HTTP/1.1
Content-Type: application/json+fhir

< output/Bundle-order1-filler-transaction.json
```

Note: Does the ImagingStudy resource needs to be modified since it is moved into the other pacs and should be referenced to that?
### Get new Radiology Order [07] 

Equivalent to step [02]

1. Poll for new tasks

```
GET {{host}}/Task?status=ready_lastUpdated=gt2021-10-27T14:56:59+02:00 HTTP/1.1
```

The filler application has to check that he is able to fullfil the task (check gln restriction.recipient identifier and maybe also if he can handle the bundle which is is on the focus for the task).

2. retrieve the [task information](Task-task-order1-filler.json.html) and update the status to in-progress, set lastModified and owner get the corresponding Bundle 

The filler application updates the task also with the filler identifier.

### Fulfill Radiology Order [08]

Internal to Filler Radiology Order

### Create PDF Report with references to new imaging studies [09]

The PDF Reported is base64 embedded in a [DocumentReference](DocumentReference-pdfreport-filler.html) Resource in the attachment.

(Note: An alternative would be to use the [IHE MHD profile](https://profiles.ihe.net/ITI/MHD/ITI-65.html), but that would need a SubmissionSet, DocumentReference and a Binary representing the pdf).

The [ImagingStudy](ImagingStudy-imagingstudy-filler.html) referenced need to be provided.
Note: In this UseCase also only the Accession Number could be provided correct?

The Task needs to be updated
- status set to completed
- output references the DocumentReference and ImagingStudy 

As in step [06] this can be done in different calls (Create DocumentReference and ImagingStudy, Update Task) or in one call in a [transaction](Bundle-order1-update-filler-transaction.html) (Note: The id for the update has to be removed in example, this is due to the ig itself).

### Get PDF Report with references to imaging studies [10]

The Intermediary polls for completed tasks (as an alternative it could also create a subscription) with the following query (referencing only completed since last checked):

```
GET {{host}}/Task?status=completed&_lastUpdate=gt2021-10-27T14:56:59+02:00 HTTP/1.1
```

the intermediary needs to check if the was the retrieve the task information and downloads the referenced output resources (DocumentReference, ImagingStudy)

### Get referenced Imaging Studies [11]
### Transfer PDF Report and Imaging Studies [12]
### Store imaging Imaging Studies [13]

These steps are done directly with the intermediary and the PACS. 

###  Store PDF Report Set Radiology Order to completed [14]

The intermediary updates the original Task on the Placer FHIR Server to completed and references the results in the output with the PDF Repprt and ImagingStudies.

1. Step by Step: POST DocumentReference Report, Imaging Study and update Task on Placer FHIR Server and link in the Task resource to the respective Bundle and ImagingStudy

2. Post a [transaction Bundle will all Resources](Bundle-order1-update-placer-complete-transaction.html) together to the Placer FHIR Server

```
POST {{host}}/ HTTP/1.1
Content-Type: application/json+fhir

< output/Bundle-order1-update-placer-complete-transaction.json
```



