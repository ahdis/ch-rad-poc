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
* item[=].item[0].linkId = "order.title"
* item[=].item[=].text = "Titel"
* item[=].item[=].answer.valueString = "Anmeldung Radiologie"
* item[=].item[+].linkId = "order.type"
* item[=].item[=].text = "Typ"
* item[=].item[=].answer.valueCoding = urn:oid:2.16.756.5.30.1.127.3.4#2161000195103 "Imaging order (record artifact)"
* item[=].item[+].linkId = "order.category"
* item[=].item[=].text = "Kategorie"
* item[=].item[=].answer.valueCoding = $sct#721963009 "Order (record artifact)"
* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "1234"
* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:2.16.756.5.30.1.145.1.2.3"
* item[+].linkId = "patient"
* item[=].text = "Patient"
* item[=].item[0].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Muster"
* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Franz"
* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].answer.valueString = "1234"
* item[=].item[+].linkId = "patient.localPidDomain"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].answer.valueString = "urn:oid:2.16.756.5.30.1.145.1.9.9"
* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1971-12-04"
* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = $administrative-gender#male "Männlich"
* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer.valueString = "Leidensweg"
* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "8003"
* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Zürich"
* item[+].linkId = "requestedEncounter"
* item[=].text = "Patientenaufnahme"
* item[=].item.linkId = "requestedEncounter.class"
* item[=].item.text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item.answer.valueCoding = $v3-ActCode#AMB "Ambulant"
* item[+].linkId = "imagingService"
* item[=].text = "Bildgebendes Verfahren"
* item[=].item.linkId = "imagingService.type"
* item[=].item.text = "Art"
* item[=].item.answer.valueCoding = $radlex#RID10321 "computed tomography"
* item[+].linkId = "caveat"
* item[=].text = "Caveats"
* item[=].item[0].linkId = "caveat.bloodCoagulation"
* item[=].item[=].text = "Beinträchtigte Blutgerinnung"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "caveat.renalInsufficiency"
* item[=].item[=].text = "Niereninsuffizienz"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "caveat.claustrophobia"
* item[=].item[=].text = "Klaustrophobie"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "caveat.bodyPiercing"
* item[=].item[=].text = "Körperpiercing"
* item[=].item[=].answer.valueBoolean = false

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
* meta.versionId = "2"
* meta.lastUpdated = "2021-10-27T11:20:03.037+00:00"
* meta.source = "#VmnrcxyTPhXuHSQn"
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
* item[0].linkId = "order"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-document#Bundle"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "order.title"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.title"
* item[=].item[=].text = "Titel"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "order.type"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.type"
* item[=].item[=].text = "Typ"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.typeCode"
* item[=].item[+].linkId = "order.category"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.category"
* item[=].item[=].text = "Kategorie"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.classCode"
* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:precedentDocument"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:urgentNoficationContactForThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:urgentNoficationContactForTheResponseToThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $request-priority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = $request-priority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = $request-priority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = $request-priority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].item[0].linkId = "patient.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.value"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "patient.localPidDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.system"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].type = #date
* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $administrative-gender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = $administrative-gender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = $administrative-gender#other "Anderes"
* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "patient.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.line"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.city"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.country"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.address.country"
* item[=].item[=].text = "Land"
* item[=].item[=].type = #string
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group
* item[=].item[0].linkId = "requestedEncounter.class"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $v3-ActCode#AMB "Ambulant"
* item[=].item[=].answerOption[+].valueCoding = $v3-ActCode#IMP "Stationär"
* item[=].item[=].answerOption[+].valueCoding = $v3-ActCode#EMER "Notfall"
* item[=].item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.extension:desiredAccommodation"
* item[=].item[=].text = "Zimmerkategorie"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $v3-ActCode#P "Einerzimmer"
* item[=].item[=].answerOption[+].valueCoding = $v3-ActCode#SP "Zweierzimmer"
* item[=].item[=].answerOption[+].valueCoding = $v3-ActCode#W "Mehrbettzimmer"
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group
* item[=].item[0].linkId = "coverage.beneficiary"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.beneficiary"
* item[=].item[=].text = "Begünstigter (Patient)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.beneficiary.ahvn13"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:AHVN13"
* item[=].item[=].item.text = "AHV-Nr. des Patienten"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Krankenkasse (nach KVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.kvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.uvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Unfallversicherung (nach UVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.uvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.uvg.claimNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Schadennummer"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.vvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Zusatzversicherung (nach VVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.vvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.vvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.iv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Invalidenversicherung (IV)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.iv.verfuegungsnummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "IV-Verfügungsnummer"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.mv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Militärversicherung (MV)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.mv.versichertennummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "MV-Versichertennummer"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.self"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Selbstzahler"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.self.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.self.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.other"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Anderer Kostenträger"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.other.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name des Kostenträgers"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.other.id"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Beliebige ID"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.other.id.note"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier.type.text"
* item[=].item[=].item[=].text = "Bemerkung zur ID"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[0].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.line"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:dataEnterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group
* item[=].item[0].linkId = "receiver.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Empfangende Person"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.line"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.address.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "receiverCopies"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger"
* item[=].type = #group
* item[=].item.linkId = "receiverCopy"
* item[=].item.text = "Kopieempfangende Organisation oder Person"
* item[=].item.type = #group
* item[=].item.repeats = true
* item[=].item.item[0].linkId = "receiverCopy.organization.name"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item.item[=].text = "Name der Organisation"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.title"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.prefix"
* item[=].item.item[=].text = "Titel"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.familyName"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.family"
* item[=].item.item[=].text = "Name"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.givenName"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.given"
* item[=].item.item[=].text = "Vorname"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.phone"
* item[=].item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/ContactPoint#ContactPoint.value"
* item[=].item.item[=].text = "Telefon"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.email"
* item[=].item.item[=].definition = "http://hl7.org/fhir/StructureDefinition/ContactPoint#ContactPoint.value"
* item[=].item.item[=].text = "E-Mail"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.streetAddressLine"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.line"
* item[=].item.item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item.item[=].type = #string
* item[=].item.item[=].repeats = true
* item[=].item.item[+].linkId = "receiverCopy.postalCode"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.postalCode"
* item[=].item.item[=].text = "PLZ"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.city"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.city"
* item[=].item.item[=].text = "Ort"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.country"
* item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.country"
* item[=].item.item[=].text = "Land"
* item[=].item.item[=].type = #string
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true
* item[=].item[0].linkId = "appointment.location"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.participant.actor"
* item[=].item[=].text = "Ort der Durchführung"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "appointment.location.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.name"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "appointment.location.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.streetAddressLine"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.address.line"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "appointment.location.postalCode"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.address.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.city"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.address.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.country"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.address.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "appointment.requestedPeriod"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod"
* item[=].item[=].text = "Datum und Zeit, wann der Termin bevorzugt geplant werden soll"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "appointment.requestedPeriod.start"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.start"
* item[=].item[=].item[=].text = "Von"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[+].linkId = "appointment.requestedPeriod.end"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.end"
* item[=].item[=].item[=].text = "Bis"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "appointment.status"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.status"
* item[=].item[=].text = "Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $appointmentstatus#proposed "Wunsch des Patienten (vorgeschlagen)"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = $appointmentstatus#pending "Vom Patienten bestätigt, aber vom Leistungserbringer noch nicht (ausstehend)"
* item[=].item[=].answerOption[+].valueCoding = $appointmentstatus#booked "Vom Patienten und Leistungserbringer bestätigt (gebucht)"
* item[=].item[+].linkId = "appointment.patientInstruction"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.patientInstruction"
* item[=].item[=].text = "Patienteninformation für diesen Termin"
* item[=].item[=].type = #string
* item[+].linkId = "requestedService"
* item[=].text = "Angeforderte Leistung"
* item[=].type = #group
* item[=].required = true
* item[=].item.linkId = "requestedService.service"
* item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.category.coding"
* item[=].item.text = "Leistung"
* item[=].item.type = #choice
* item[=].item.required = true
* item[=].item.answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-requested-service"
* item[+].linkId = "reason"
* item[=].text = "Klinische Fragestellung"
* item[=].type = #group
* item[=].item.linkId = "reason.question"
* item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.reasonCode.text"
* item[=].item.text = "Fragestellung"
* item[=].item.type = #string
* item[=].item.repeats = true
* item[+].linkId = "imagingService"
* item[=].text = "Bildgebendes Verfahren"
* item[=].type = #group
* item[=].item.linkId = "imagingService.type"
* item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.code.coding:RdlxModType"
* item[=].item.text = "Art"
* item[=].item.type = #choice
* item[=].item.answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-modality-type"
* item[+].linkId = "orderDetail"
* item[=].text = "Weitere Angaben zur Bildgebung"
* item[=].type = #group
* item[=].item[0].linkId = "orderDetail.imagingRegion"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:imagingRegion"
* item[=].item[=].text = "Region"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-region"
* item[=].item[+].linkId = "orderDetail.imagingFocus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.bodySite"
* item[=].item[=].text = "Fokus"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-imaging-focus"
* item[=].item[+].linkId = "orderDetail.laterality"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:laterality"
* item[=].item[=].text = "Seitenangabe"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-laterality"
* item[=].item[+].linkId = "orderDetail.viewType"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:viewType"
* item[=].item[=].text = "Ansicht"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-view-type"
* item[=].item[+].linkId = "orderDetail.maneuverType"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:maneuverType"
* item[=].item[=].text = "Manöver"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-maneuver-type"
* item[=].item[+].linkId = "orderDetail.guidanceForAction"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.orderDetail:guidanceForAction"
* item[=].item[=].text = "Handlungsanleitung"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen[0].question = "requestedService.service"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $ch-rad-order-requested-service#RadIntervention
* item[=].item[=].enableWhen[+].question = "requestedService.service"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $ch-rad-order-requested-service#ImagingRequestWithIntervention
* item[=].item[=].enableBehavior = #any
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-guidance-for-action"
* item[+].linkId = "desiredRadiologist"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.performer"
* item[=].text = "Gewünschter Radiologe für die Befundung / für die Intervention"
* item[=].type = #group
* item[=].item[0].linkId = "desiredRadiologist.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "desiredRadiologist.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string
* item[+].linkId = "diagnosisList"
* item[=].text = "Diagnosen und Befunde"
* item[=].type = #group
* item[=].item[0].linkId = "diagnosisList.primaryDiagnosis"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.reasonReference"
* item[=].item[=].text = "Hauptdiagnose"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:diagnosis"
* item[=].item[=].text = "Nebendiagnose"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "diagnosisList.bodyHeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:bodyHeight"
* item[=].item[=].text = "Grösse (cm)"
* item[=].item[=].type = #quantity
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "diagnosisList.bodyWeight"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:bodyWeight"
* item[=].item[=].text = "Gewicht (kg)"
* item[=].item[=].type = #quantity
* item[=].item[=].repeats = false
* item[+].linkId = "caveat"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:caveats"
* item[=].text = "Caveats"
* item[=].type = #group
* item[=].item[0].linkId = "caveat.bloodCoagulation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Beinträchtigte Blutgerinnung"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "caveat.bloodCoagulation.INR"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "INR"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "caveat.bloodCoagulation"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[0].linkId = "caveat.bloodCoagulation.INR.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (INR)"
* item[=].item[=].item[=].item[=].type = #quantity
* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-INR-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "Thrombozyten"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "caveat.bloodCoagulation"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[0].linkId = "caveat.bloodCoagulation.platelets.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (10^3/µl)"
* item[=].item[=].item[=].item[=].type = #quantity
* item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-platelets-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "caveat.renalInsufficiency"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Niereninsuffizienz"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "caveat.renalInsufficiency.creatinineClearance"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "Creatinin-Clearance"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "caveat.renalInsufficiency"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[0].linkId = "caveat.renalInsufficiency.creatinineClearance.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (ml/min)"
* item[=].item[=].item[=].item[=].type = #quantity
* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinineclearance-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.evidence.detail"
* item[=].item[=].item[=].text = "Creatinin"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "caveat.renalInsufficiency"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[0].linkId = "caveat.renalInsufficiency.creatinine.quantity"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation#Observation.valueQuantity"
* item[=].item[=].item[=].item[=].text = "Wert (µmol/l)"
* item[=].item[=].item[=].item[=].type = #quantity
* item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.dateTime"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-creatinine-observation#Observation.effectiveDateTime"
* item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"
* item[=].item[=].item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "caveat.claustrophobia"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Klaustrophobie"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "caveat.bodyPiercing"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Körperpiercing"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "caveat.device"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-device"
* item[=].item[+].linkId = "caveat.hyperthyroidism"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Hyperthyreose"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "caveat.diabetes"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Diabetes mellitus"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "caveat.gravida"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Schwangerschaft"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "caveat.contrastMediaAllergy"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Kontrastmittelallergie"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "caveat.drugPrescription"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-caveat-condition#Condition.code"
* item[=].item[=].text = "Relevante Medikamente, z.B. Metformin"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-rad-order/ValueSet/ch-rad-order-caveat-substance"
* item[+].linkId = "previousResults"
* item[=].definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.supportingInfo:previousImagingResults"
* item[=].text = "Vorherige Untersuchungsresultate"
* item[=].type = #group
* item[=].item.linkId = "previousResults.attachment"
* item[=].item.text = "Anhang"
* item[=].item.type = #attachment
* item[=].item.repeats = true
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true
* item[=].item.linkId = "note.text"
* item[=].item.definition = "http://fhir.ch/ig/ch-rad-order/StructureDefinition/ch-rad-order-servicerequest#ServiceRequest.note.text"
* item[=].item.text = "Kommentar"
* item[=].item.type = #string
* item[=].item.required = true

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