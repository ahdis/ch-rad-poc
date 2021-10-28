The UseCase describes the different steps which should be achieved in the Proof Of Concept for connecting two independent organisations with their installations which contain each an own FHIR server and a PAC's system which are connected by an intermediary.

- Placing a radiology order according to ch-rad-order which added references to previous imaging studies
- The radiology order and the corresponding images are transferred to the Filler through the intermediary
- From the Filler a pdf report and previous studies are returned and the intermediary transports the results back

Placer App:  WebApp with own FHIR Server
Placer Pacs: Studies for patients

Intermediary: Transfers Orders, Reports and Image Studies between Placer and Filler in both directions 

Filler:  Connects to FHIR server for receiving orders, connect toback and sysgem, resul
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

### Create Radiology Order with references to previous imaging studies [01] 

The Implementation Guide [ch-rad-order](http://fhir.ch/ig/ch-rad-order/index.html) defines a general purpose [radiology order questionnaire](http://fhir.ch/ig/ch-rad-order/questionnaire.html). For this Use Case we define a subset of the general purpose questionnaire, and add the questions necessary for linking the previous Imaging Studies. The questionnaire is defined [here](Questionnaire-QuestionnaireRadiologyOrderPoC.html). Questionnaire Items and the corresponding maps will be provided for the ch-rad-order ig, see [issue 17](https://github.com/hl7ch/ch-rad-order/issues/17).

The FHIR Server is configured with the [ch-rad-order](http://fhir.ch/ig/ch-rad-order/index.html) and dependent Implementation Guides. This allow the Placer Application to request different Radiology Orders (Questionnaires). In addition the FHIR Server needs to support [StructureMap-based extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html#map-extract).

The Placer Application allows a User to select the order type (questionnaire). He can save a temporary order and can complete it at a later time. If the order
is finished the Order will be transformed to the [CH RAD-Order Document](http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-document) with the [StructureMap-based extraction](https://build.fhir.org/ig/HL7/sdc/extraction.html#map-extract) on the FHIR Server.

The RAD-Order document will be stored on the FHIR Server as a [FHIR Bundle](http://hl7.org/fhir/bundle.html).

The Placer App creates a Task Resource on the FHIR Server with the input referenced to the FHIR Bundle. If the order contains references to
the previous Imaging Results, they are also added as additional input elements. 
*(TODO: This is not yet done on the Placer app and needs to be created).*

[Example order represented as a task](Task-task-order1.json.html) with referencing the bundle and imaging source. Status of the task is set to ready.

### Get new radiology order [02]

The Intermediary polls for new tasks (as an alternative it could also create a subscription) with the following query:

```
GET {{host}}/Task?status=ready&requester=Organization/PlacerOrganization HTTP/1.1
```

retrieve the task information and update the status to in-progress, get the corresponding Bundle and ImagingStudy (could be done also in one query with _include, would need ot be adapted to _include also work with the input ImagingStudy)

```
GET {{host}}/Task?status=ready&requester=Organization/PlacerOrganization HTTP/1.1
GET {{host}}/Task/task-order1 HTTP/1.1
GET {{host}}/Bundle/bundle-order1 HTTP/1.1
GET {{host}}/ImagingStudy/imagingstudy-order1 HTTP/1.1
```

Update the status, lastModified and owner via PATCH operation or [update the complete Task](Task-task-order1-inprogress.html) via PUT

```
PATCH {{host}}/Task/task-order1 HTTP/1.1
Content-Type: application/json-patch+json

[ 
    {  "op": "replace", "path": "/status", "value": "in-progress" },
    {  "op": "replace", "path": "/lastModified", "value": "2021-10-27T15:46:34+02:00" },
    {  "op": "add", "path": "/owner", "value": { "reference": "Device/PlacerIntermediary",  "display": "PlacerIntermediary" } }
]
```

### Get referenced previous Imaging Studies [03]
### Transfer Order and Imaging Studies [04]
### [05] Store previous Imaging Studies [05]

These steps are done directly with the intermediary and the PACS.

### Create Radiology Order [06] 

The intermediary creates a new Task on the Filler FHIR Server together with the Radiology Order and ImagingStudies and a backlink (partOf) to the originalTask. The requester of the Task is the Filler Intermediary.

1. Step by Step: POST Bundle, Imaging Study and Task on Filler FHIR Server and do the linking yourself in Task resource to the respective Bundle and ImagingStudy yourself

2. Post a [transaction Bundle will all Resources](Bundle-order1-filler-transaction.html) together to the Filler FHIR Server

```
POST {{host}}/ HTTP/1.1
Content-Type: application/json+fhir

< output/Bundle-order1-filler-transaction.json
```

Note: Open issue on matchbox that external references are not yet [allowed](https://github.com/ahdis/matchbox/issues/18)

### Get new Radiology Order [07] 

Equivalent to step [02]

1. Poll for new tasks

```
GET {{host}}/Task?status=ready&requester=Device/FillerIntermediary HTTP/1.1
```

2. retrieve the task information and update the status to in-progress, set lastModified and owner get the corresponding Bundle 


### Fullfil Radiology Order [08]

Internal to Filler Radiology Order

### Create PDF Report with references to new imaging studies [09]

The PDF Reported is base64 embedded in a [DocumentReference](DocumentReference-pdfreport-filler.html) Resource in the attachment.

(Note: An alternative would be to use the [IHE MHD profile](https://profiles.ihe.net/ITI/MHD/ITI-65.html), but that would need a SubmissionSet, DocumentReference and a Binary representing the pdf).

The [ImagingStudy](ImagingStudy-imagingstudy-filler.html) referenced need to be provided.
Note: In this UseCase also only the Accession Number could be provided correct?

The Task needs to be updated
- status set to completed
- output references the DocumentReference and ImagingStudy 

As in step [06] this can be done in different calls (Create DocumentReference and ImagingStudy, Update Task) or in one call in a [transaction](Bundle-order1-update-filler-transaction.html) (Note: The id for the update has to be removed, this is due to the ig itself).

### Get PDF Report with references to imaging studies [10]

The Intermediary polls for completed tasks (as an alternative it could also create a subscription) with the following query (referencing only completed since last checked):

```
GET {{host}}/Task?status=completed&requester=Device/FillerIntermediary&modified=gt2021-10-27T14:56:59+02:00 HTTP/1.1
```

retrieve the task information and downloads the referenced output resources (DocumentReference, ImagingStudy)

### Get referenced Imaging Studies [11]
### Transfer PDF Report and Imaging Studies [12]
### Store imaging Imaging Studies [13]

These steps are done directly with the intermediary and the PACS.

###  Store PDF Report Set Radiology Order to completed [14]

The intermediary updates the original Task on the Placer FHIR Server to completed and references the results in the output with the PDF Reüprt and ImagingStudies.

1. Step by Step: POST DocumentReference Report, Imaging Study and update Task on Placer FHIR Server and link in the Task resource to the respective Bundle and ImagingStudy

2. Post a [transaction Bundle will all Resources](Bundle-order1-update-placer-complete-transaction.html) together to the Placer FHIR Server

```
POST {{host}}/ HTTP/1.1
Content-Type: application/json+fhir

< output/Bundle-order1-update-placer-complete-transaction.json
```



