### matchbox and matchbox-formfiller can be used for this poc to 
- create orders according to the radiology order questionnaires with the formfiller
- orders can be temporarily saved on matchbox
- if orders are completed a task will be generated on matchbox and the progress of the task can be tracked in the formfiller
- default values for the orders/questionnaire can be stored


### installing matchbox 

you need docker to run matchbox in this configuration
open a folder on the machine where you want matchbox deployed (e.g. docker)
- copy [application.yml](docker/application.yml) to this folder
- copy [docker-compose.yml](docker/docker-compose.yml) to this folder

then you can startup the docker instances.
Note: For linux based systems it is [docker-compose](https://docs.docker.com/compose/install/))

```
docker compose up
[+] Running 3/3
 ⠿ Container matchbox-db                   Started                                                                                                                          0.5s
 ⠿ Container matchbox                      Started                                                                                                                          0.9s
 ⠿ Container docker_matchbox-formfiller_1  Started      
```

this will run a postgres db container, matchbox and the form-filler application. 

it will take a while until everything is started up. afterwards the application should be available at:

[http://localhost:4300/matchbox-formfiller/#/](http://localhost:4300/matchbox-formfiller/#/)

![application](matchbox-form-filler.png)

<div style="clear: left"/>


you should have on the bottom the **Questionnaire Radiology Order PoC** which is used in this project.
on the top right you have the menu.

the FHIR server base address is 
[http://localhost:4300/matchbox/fhir/metata](http://localhost:4300/matchbox/fhir) and is also exposed (not only to the form-filler app on port 8080)


### configuring the radiology order for the PoC

1. You need to define a 'Default' Questionnaire Response, open the Questionnaire Radiology Order PoC and click on **Save as Default**
2. Go to [Settings](http://localhost:4200/#/settings) in the app and click **Questionnaire Radiology Order PoC***, you should see now also hidden and readonly fields
   1. Set 'Titel' to: 'Anmeldung Radiologie'
   2. Set 'Typ' to 'Imaging Order (record artifact)'
   3. Set 'Kategorie' to 'Order (record artifact)' 
   4. Remove the 'Auftragsnummer des Auftragsgebers'
   5. Add 'Identifier Domain for Auftragsnummer des Auftragsgebers', should be and oid (or canonical url) of your organisation e.g: urn:oid:2.16.756.5.30.1.145.1.2.3
   6. Add 'Lokale Patienten-ID Domain' oid, e.g: urn:oid:2.16.756.5.30.1.145.1.9.9
   7. Add the GLN for the sender org 'Verantwortliche Organisation Sender' e.g: 7601003000078
   8. Add the GLN for the receiver org 'Empfangende Oganisation e.g. GLN 2000000985633
   9. Fill up any default values you would like to have filled out for each order
   10. Click Save as Default

### creating the order
1. select **Questionnaire Radiology Order PoC***
2. fill in the fiels to test
3. click Save and Send, switch to the orders view


