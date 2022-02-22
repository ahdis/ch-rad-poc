Instance: bundle-order1
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b027579c-9f76-4596-a164-1d6bcf0b8556"
* type = #document
* timestamp = "2021-10-27T11:24:40+00:00"
* entry[0].fullUrl = "urn:uuid:7ad0bcd8-99f7-498f-b7d1-17c44322e1b5"
* entry[=].resource = Inline-Instance-for-bundle-order1-1
* entry[+].fullUrl = "urn:uuid:07e1d224-90c3-4246-8cc0-dcf30a4c9b43"
* entry[=].resource = Inline-Instance-for-bundle-order1-2
* entry[+].fullUrl = "urn:uuid:b83b8e37-573a-432c-93a4-79dfaf3aebde"
* entry[=].resource = Inline-Instance-for-bundle-order1-3
* entry[+].fullUrl = "urn:uuid:999cf67d-dc4e-47f4-97b7-26aab5f32aa5"
* entry[=].resource = Inline-Instance-for-bundle-order1-4
* entry[+].fullUrl = "urn:uuid:36387c80-9af4-435b-af1e-ed42fc5825e4"
* entry[=].resource = Inline-Instance-for-bundle-order1-5
* entry[+].fullUrl = "urn:uuid:f4a3b79c-8803-4b99-8a6a-f058f0f162cd"
* entry[=].resource = Inline-Instance-for-bundle-order1-6
* entry[+].fullUrl = "urn:uuid:f4a3b79c-8803-4b99-8a6a-f058f0f162ce"
* entry[=].resource = Inline-Instance-for-bundle-order1-7
* entry[+].fullUrl = "urn:uuid:f4a3b79c-8803-4b99-8a6a-f058f0f162cf"
* entry[=].resource = Inline-Instance-for-bundle-order1-8

//------------- Author -------------
Instance: Inline-Instance-for-bundle-order1-7
InstanceOf: ChCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:f4a3b79c-8803-4b99-8a6a-f058f0f162cf)

Instance: Inline-Instance-for-bundle-order1-8
InstanceOf: ChCorePractitioner
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000034321"
* name.use = #official
* name.family = "Rderplacer"
* name.given = "Ottilie"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[0].value = "+41 44 333 22 11"
* telecom[1].system = #email
* telecom[1].value = "o.rderplacer@happydoctors.ch"


Instance: Inline-Instance-for-bundle-order1-1
InstanceOf: Composition
Usage: #inline
* status = #final
* type = urn:oid:2.16.756.5.30.1.127.3.4#2161000195103 "Imaging order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(urn:uuid:07e1d224-90c3-4246-8cc0-dcf30a4c9b43)
* date = "2021-10-27T11:24:40+00:00"
* author = Reference(urn:uuid:f4a3b79c-8803-4b99-8a6a-f058f0f162ce)
* title = "Anmeldung Radiologie"
* section.title = "Order-Referral"
* section.code = $loinc#93037-0 "Portable medical order form"
* section.entry[0] = Reference(urn:uuid:b83b8e37-573a-432c-93a4-79dfaf3aebde)
* section.entry[+] = Reference(urn:uuid:999cf67d-dc4e-47f4-97b7-26aab5f32aa5)
* section.entry[+] = Reference(urn:uuid:36387c80-9af4-435b-af1e-ed42fc5825e4)

Instance: Inline-Instance-for-bundle-order1-2
InstanceOf: Patient
Usage: #inline
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.1.145.1.9.9"
* identifier.value = "1234"
* name.family = "Muster"
* name.given = "Franz"
* gender = #male
* birthDate = "1971-12-04"
* address.line = "Leidensweg"
* address.city = "Zürich"
* address.postalCode = "8003"

Instance: Inline-Instance-for-bundle-order1-3
InstanceOf: QuestionnaireResponse
Usage: #inline
* questionnaire = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* status = #in-progress
* item[0].linkId = "order"
* item[=].text = "Auftrag"

Instance: Inline-Instance-for-bundle-order1-4
InstanceOf: ServiceRequest
Usage: #inline
* extension.url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-requestedencounterdetails"
* extension.valueReference = Reference(urn:uuid:f4a3b79c-8803-4b99-8a6a-f058f0f162cd)
* identifier.type = $v2-0203#PLAC
* identifier.system = "urn:oid:2.16.756.5.30.1.145.1.2.3"
* identifier.value = "1234"
* status = #active
* intent = #order
* code = $radlex#RID10321 "computed tomography"
* subject = Reference(urn:uuid:07e1d224-90c3-4246-8cc0-dcf30a4c9b43)

Instance: Inline-Instance-for-bundle-order1-5
InstanceOf: Questionnaire
Usage: #inline
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-rad-order/StructureMap/RadOrderQrToBundle"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[0].url = "name"
* extension[=].extension[=].valueId = "Bundle"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Bundle
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The Bundle that is to be used to pre-populate the form"
* url = "http://fhir.ch/ig/ch-rad-order/Questionnaire/QuestionnaireRadiologyOrder"
* version = "0.1.0"
* name = "QuestionnaireRadiologyOrder"
* title = "Questionnaire Radiology Order"
* derivedFrom = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* status = #active
* subjectType = #Patient
* date = "2021-02-24"
* publisher = "HL7 Switzerland"
* contact.name = "Juerg P. Bleuer"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC-BY-SA-4.0"

Instance: Inline-Instance-for-bundle-order1-6
InstanceOf: Encounter
Usage: #inline
* status = #planned
* class = $v3-ActCode#AMB "Ambulant"
* subject = Reference(urn:uuid:07e1d224-90c3-4246-8cc0-dcf30a4c9b43)

Instance: imagingstudy-order1
InstanceOf: ImagingStudy
Usage: #example
* identifier[0].use = #official
* identifier[=].system = "urn:dicom:uid"
* identifier[=].value = "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430047"
* status = #available
* subject.display = "Patient"

Instance: imagingstudy-order2
InstanceOf: ImagingStudy
Usage: #example
* identifier[0].use = #official
* identifier[=].system = "urn:dicom:uid"
* identifier[=].value = "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430048"
* status = #available
* subject.display = "Patient"

//------------- Organizations -------------
Instance: task-order1
InstanceOf: Task
Description: "Task is created for
- Radiology Order in bundle-order1
- Previous ImagingStudy should be also sent with"
* identifier.type = $v2-0203#PLAC
* identifier.system = "urn:oid:2.16.756.5.30.1.145.1.2.3"
* identifier.value = "1234"
* status = #ready
* intent = #order
* description = "Order Test001"
* focus = Reference(Bundle/bundle-order1)
* authoredOn = "2021-10-27T12:48:59+02:00"
* lastModified = "2021-10-27T12:48:59+02:00"
* requester.identifier.system = "urn:oid:2.51.1.3"
* requester.identifier.value = "7601003001136"
* requester.display = "SUVA (Test)"
* restriction.recipient.identifier.system = "urn:oid:2.51.1.3"
* restriction.recipient.identifier.value = "7601001401310"
* restriction.recipient.display = "ahdis (Test)"
* input[0].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order1)
* input[+].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order2)


Instance: task-order1-inprogress
InstanceOf: Task
Description: "Task is updated to be 
- status in-progress
- added owner"
Usage: #example
* identifier.type = $v2-0203#PLAC
* identifier.system = "urn:oid:2.16.756.5.30.1.145.1.2.3"
* identifier.value = "1234"
* status = #in-progress
* description = "Order Proof Of Cooncep 1 Example"
* intent = #order
* focus = Reference(Bundle/bundle-order1)
* authoredOn = "2021-10-27T12:48:59+02:00"
* lastModified = "2021-10-27T13:55:29+02:00"
* requester.identifier.system = "urn:oid:2.51.1.3"
* requester.identifier.value = "7601003001136"
* requester.display = "SUVA (Test)"
* restriction.recipient.identifier.system = "urn:oid:2.51.1.3"
* restriction.recipient.identifier.value = "7601001401310"
* restriction.recipient.display = "ahdis (Test)"
* owner.identifier.system = "urn:oid:2.999.1.2.3"
* owner.identifier.value = "tbd"
* owner.display = "MedicalConnector (Test)"
* input[0].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order1)
* input[+].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order2)

Instance: task-order1-filler
InstanceOf: Task
Description: "Task on filler is created to be 
- status ready
- requester is Filler Intermediay
- referencing created Bundle "
Usage: #example
* identifier.type = $v2-0203#PLAC
* identifier.system = "urn:oid:2.16.756.5.30.1.145.1.2.3"
* identifier.value = "1234"
* status = #ready
* description = "Order Proof Of Cooncep 1 Example"
* intent = #order
* focus = Reference(Bundle/bundle-order1)
* authoredOn = "2021-10-27T13:56:59+02:00"
* lastModified = "2021-10-27T13:56:59+02:00"
* requester.identifier.system = "urn:oid:2.999.1.2.3"
* requester.identifier.value = "tbd"
* requester.display = "MedicalConnector (Test)"
* restriction.recipient.identifier.system = "urn:oid:2.51.1.3"
* restriction.recipient.identifier.value = "7601001401310"
* restriction.recipient.display = "ahdis (Test)"
* input[0].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order1)
* input[+].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order2)


Instance: order1-filler-transaction
InstanceOf: Bundle
Description: "Transaction Bundle to create all necessary instances on the Filler FHIR Server"
Usage: #example
* type = #transaction
* timestamp = "2021-10-27T13:56:59+02:00"
* entry[+].fullUrl = "http://example.com/fhir/Bundle/bundle-order1"
* entry[=].resource = bundle-order1
* entry[=].request.url = "Bundle"
* entry[=].request.method = #POST
* entry[+].fullUrl = "http://example.com/fhir/ImagingStudy/imagingstudy-order1"
* entry[=].resource = imagingstudy-order1
* entry[=].request.url = "ImagingStudy"
* entry[=].request.method = #POST
* entry[+].fullUrl = "http://example.com/fhir/ImagingStudy/imagingstudy-order2"
* entry[=].resource = imagingstudy-order1
* entry[=].request.url = "ImagingStudy"
* entry[=].request.method = #POST
* entry[+].fullUrl = "http://example.com/fhir/Task/task-order1-filler"
* entry[=].resource = task-order1-filler
* entry[=].request.url = "Task"
* entry[=].request.method = #POST


Instance: pdfreport-filler
InstanceOf: DocumentReference
Usage: #example
* status = #current
* date = "2021-10-27T17:56:59+02:00"
* description = "PDF Report"
* content.attachment.contentType = #application/pdf
* content.attachment.language = #de-CH
* content.attachment.data = "JVBERi0xLjAKMSAwIG9iajw8L1BhZ2VzIDIgMCBSPj5lbmRvYmogMiAwIG9iajw8L0tpZHNbMyAw\nIFJdL0NvdW50IDE+PmVuZG9iaiAzIDAgb2JqPDwvTWVkaWFCb3hbMCAwIDMgM10+PmVuZG9iagp0\ncmFpbGVyPDwvUm9vdCAxIDAgUj4+Cg=="

Instance: imagingstudy-filler
InstanceOf: ImagingStudy
Usage: #example
* identifier[0].use = #official
* identifier[=].system = "urn:dicom:uid"
* identifier[=].value = "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430046"
* identifier[+].use = #usual
* identifier[=].type = $v2-0203#ACSN
* identifier[=].value = "W12342398"
* identifier[=].assigner.identifier.system = "urn:oid:2.51.1.3"
* identifier[=].assigner.identifier.value = "7601001401310"
* identifier[=].assigner.display = "ahdis (Test)"
* status = #available
* modality = $DCM#DX
* subject.display = "Patient"
* started = "2017-01-01T11:01:20+03:00"
* numberOfSeries = 1
* numberOfInstances = 2
* series.uid = "2.16.124.113543.6003.1154777499.30246.19789.3503430045.1"
* series.number = 3
* series.modality = $DCM#DX
* series.description = "XR Wrist 3+ Views"
* series.numberOfInstances = 2

Instance: task-order1-filler-completed
InstanceOf: Task
Description: "Task on filler is completed and 
- status completed
- output set to DocumentRefence and ImagingStudy "
Usage: #example
* identifier[0].type = $v2-0203#PLAC
* identifier[0].system = "urn:oid:2.16.756.5.30.1.145.1.2.3"
* identifier[0].value = "1234"
* identifier[1].type = $v2-0203#FILL
* identifier[1].system = "urn:oid:2.16.756.5.30.1.145.1.2.4"
* identifier[1].value = "6789"
* status = #completed
* focus = Reference(Bundle/bundle-order1)
* intent = #order
* authoredOn = "2021-10-27T13:56:59+02:00"
* lastModified = "2021-10-27T14:56:59+02:00"
* requester.identifier.system = "urn:oid:2.999.1.2.3"
* requester.identifier.value = "tbd"
* requester.display = "MedicalConnector (Test)"
* restriction.recipient.identifier.system = "urn:oid:2.51.1.3"
* restriction.recipient.identifier.value = "7601001401310"
* restriction.recipient.display = "ahdis (Test)"
* owner.identifier.system = "urn:oid:2.51.1.3"
* owner.identifier.value = "7601001401310"
* owner.display = "ahdis (Test)"
* input[0].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order1)
* input[+].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order2)
* output[0].type.text = "DocumentReference"
* output[=].valueReference = Reference(pdfreport-filler)
* output[1].type.text = "ImagingStudy"
* output[=].valueReference = Reference(imagingstudy-filler)

Instance: order1-update-filler-transaction
InstanceOf: Bundle
Description: "Transaction Bundle to updated  the task completed on the Filler FHIR Server and link the results"
Usage: #example
* type = #transaction
* timestamp = "2021-10-27T14:56:59+02:00"
* entry[+].fullUrl = "http://example.com/fhir/ImagingStudy/imagingstudy-filler"
* entry[=].resource = imagingstudy-filler
* entry[=].request.url = "ImagingStudy"
* entry[=].request.method = #POST
* entry[+].fullUrl = "http://example.com/fhir/DocumentReference/pdfreport-filler"
* entry[=].resource = pdfreport-filler
* entry[=].request.url = "DocumentReference"
* entry[=].request.method = #POST
* entry[+].fullUrl = "http://example.com/fhir/Task/task-order1-filler"
* entry[=].resource = task-order1-filler-completed
* entry[=].request.url = "Task/task-order-1-filler"
* entry[=].request.method = #PUT

Instance: task-order1-placer-completed
InstanceOf: Task
Description: "Task on filler is completed and 
- status completed
- output set to DocumentRefence and ImagingStudy "
Usage: #example
* identifier[0].type = $v2-0203#PLAC
* identifier[0].system = "urn:oid:2.16.756.5.30.1.145.1.2.3"
* identifier[0].value = "1234"
* identifier[1].type = $v2-0203#FILL
* identifier[1].system = "urn:oid:2.16.756.5.30.1.145.1.2.4"
* identifier[1].value = "6789"
* status = #completed
* description = "Order Proof Of Cooncep 1 Example"
* intent = #order
* focus = Reference(Bundle/bundle-order1)
* authoredOn = "2021-10-27T12:48:59+02:00"
* lastModified = "2021-10-27T13:55:29+02:00"
* requester.identifier.system = "urn:oid:2.999.1.2.3"
* requester.identifier.value = "tbd"
* requester.display = "MedicalConnector (Test)"
* restriction.recipient.identifier.system = "urn:oid:2.51.1.3"
* restriction.recipient.identifier.value = "7601001401310"
* restriction.recipient.display = "ahdis (Test)"
* owner.identifier.system = "urn:oid:2.51.1.3"
* owner.identifier.value = "7601001401310"
* owner.display = "ahdis (Test)"
* input[0].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order1)
* input[+].type.text = "ImagingStudy"
* input[=].valueReference = Reference(imagingstudy-order2)
* output[0].type.text = "DocumentReference"
* output[=].valueReference = Reference(pdfreport-filler)
* output[1].type.text = "ImagingStudy"
* output[=].valueReference = Reference(imagingstudy-filler)

Instance: order1-update-placer-complete-transaction
InstanceOf: Bundle
Description: "Transaction Bundle to updated the task completed on the Placer FHIR Server and link the results"
Usage: #example
* type = #transaction
* timestamp = "2021-10-27T14:59:59+02:00"
* entry[+].fullUrl = "http://example.com/fhir/ImagingStudy/imagingstudy-filler"
* entry[=].resource = imagingstudy-filler
* entry[=].request.url = "ImagingStudy"
* entry[=].request.method = #POST
* entry[+].fullUrl = "http://example.com/fhir/DocumentReference/pdfreport-filler"
* entry[=].resource = pdfreport-filler
* entry[=].request.url = "DocumentReference"
* entry[=].request.method = #POST
* entry[+].fullUrl = "http://example.com/fhir/Task/task-order1"
* entry[=].resource = task-order1-placer-completed
* entry[=].request.url = "Task/task-order1"
* entry[=].request.method = #PUT