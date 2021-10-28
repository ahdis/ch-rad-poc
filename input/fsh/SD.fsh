Profile: ChReportComposition
Parent: ChCoreComposition
Id: ch-report-composition
Title: "CH Report Composition"
Description: "Profile on Report for CH RAD-POC"
* . ^short = "CH ORF Composition"
* text 1.. MS
* text ^short = "Narrative text of the composition"
* status MS
* type MS
* type from http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.typeCode (preferred)
* type ^short = "Precise type of clinical document"
* category 1..1 MS
* category from http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.classCode (preferred)
* category ^short = "High-level kind of a clinical document at a macro level"
* subject MS
* subject ^short = "Patient as the principle target of a particular form content"
* author ..1 MS
* author only Reference(ChCorePractitionerRole)
* author ^short = "The person/organization responsible for the form content"
* title MS
* title ^short = "Meaningful title"

/*
* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "resolve()"
* section.entry ^slicing.rules = #open
* section.entry contains
    documentReference 0..1 and
    communication 0..1
* section.entry[documentReference] only Reference(CHCRLDocumentReference)
* section.entry[documentReference] ^short = "Report as pdf"
* section.entry[documentReference].reference 1..
* section.entry[communication] only Reference(CHCRLCommunication)
* section.entry[communication] ^short = "Date of informing the patient about the cancer registration"
* section.entry[communication].reference 1.. 
*/