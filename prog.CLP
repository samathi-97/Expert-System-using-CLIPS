         CLIPS (6.30 3/17/15)
CLIPS> (defrule Menu
 (not (iffoundChoice ?))
=> (printout t crlf crlf
"The snake found has a " crlf crlf 
"1.)Tail round, tapering to a point or blunt" crlf crlf 
"2.)Tail flattened, paddle shaped,bite at sea or estuary" crlf crlf
"3.)EXIT SYSTEM"crlf crlf crlf
" Enter your choise here (1|2|3): " )
(assert (iffoundChoice (read))))
:; Rule Tail round, tapering to a point or blunt
:;-----------R0---------------------
(defrule Tail_round 
(iffoundChoice 1)
?retractCh1 <- (iffoundChoice 1)
(not (ifYesNochoise ?))
 =>  (retract ?retractCh1)
(printout t crlf crlf crlf"Is ventrical scale extend full body lenght?(yes|no)"crlf crlf 
" Your answer: " )
 (assert (ifYesNochoise (read))))
:;-------------R1--------------------
(defrule Tail_round1
 (ifYesNochoise no)
 ?retractChy <- (ifYesNochoise no)
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "Do not worry,Thats a non venomous snake"crlf crlf )) 
:;--------------R2--------------------  
(defrule Tail_round2
 (ifYesNochoise yes)
 ?retractChy <- (ifYesNochoise yes)
 (not (ifYesNochoise1 ?))
 =>
 (retract ?retractChy)
 (printout t crlf crlf crlf "The head is(Trianguler|oval)"crlf crlf  " Your answer: " )
 (assert (ifYesNochoise1 (read))))
:;--------------R3-------------------
(defrule Tail_round3 
(ifYesNochoise1 Trianguler)
 ?retractChy <- (ifYesNochoise1 Trianguler)
(not (ifYesNochoise2 ?)) 
=>
 (retract ?retractChy)
(printout t crlf crlf crlf "The Loral pit is(present|absent)"crlf crlf  " Your answer: " )
 (assert (ifYesNochoise2 (read))))
:;--------------R4-------------------
(defrule Tail_round4
(ifYesNochoise2 present)
?retractChy <- (ifYesNochoise2 present)
(not (ifYesNochoise3 ?))
=>
(printout t crlf crlf crlf "The scales covering head is(large|small)"crlf crlf  " Your answer: " )
 (assert (ifYesNochoise3 (read))))
:;----------------R5-------------------
(defrule Tail_round5
(ifYesNochoise3 large)
?retractChy <- (ifYesNochoise3 large)
(not (iffoundChoice1 ?))
=>
(retract ?retractChy)
 (printout t crlf crlf crlf "Thats probably a Humped-nosed viper , Highly venomous !!!"crlf crlf 
 "Body colour is" crlf crlf 
 "1.)Light brown to olive or grey,to dark brown " crlf crlf
 "2.)Yellowish-tan to dark brown" crlf crlf
 "3.)Yellowish-brown to dark brown" crlf crlf
 " Enter your choise here (1|2|3): " )
 )
  (assert (iffoundChoice1 (read))))
:;----------------R6-------------------
(defrule Tail_round6
(ifYesNochoise3 small)
?retractChy <- (ifYesNochoise3 small)
=>
(retract ?retractChy)
 (printout t crlf crlf crlf "Thats probably a Green-pit viper , midly venomous !!!"crlf crlf )) 
:;---------------R7--------------------
(defrule Tail_round7
(ifYesNochoise2 absent)
?retractChy <- (ifYesNochoise2 absent)
(not (ifYesNochoise4 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "The scales covering head is(large|small)"crlf crlf  " Your answer: " )
 (assert (ifYesNochoise4 (read))))
:;----------------R8--------------------
(defrule Tail_round8
(ifYesNochoise4 large)
?retractChy <- (ifYesNochoise4 large)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a cat-snake , Feebly venomous !!!"crlf crlf )) 
:;---------------R9---------------------
(defrule Tail_round9
(ifYesNochoise4 small)
?retractChy <- (ifYesNochoise4 small)
(not (ifYesNochoise5 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Head has a mark of (v|bird-foot)"crlf crlf   " Your answer: " )
 (assert (ifYesNochoise5 (read))))
:;---------------R10---------------------
(defrule Tail_round10
(ifYesNochoise5 bird-foot)
?retractChy <- (ifYesNochoise5 bird-foot)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a saw-scaled viper , Highly venomous !!!"crlf crlf ))
:;----------------R11---------------------
(defrule Tail_round11
(ifYesNochoise5 v)
?retractChy <- (ifYesNochoise5 v)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Russels viper , Highly venomous !!!"crlf crlf ))
:;---------------R12----------------------
(defrule Tail_oval12
(ifYesNochoise1 oval)
?retractChy <- (ifYesNochoise1 oval)
(not (ifYesNochoise6 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Hood is (present|absent)" crlf crlf   " Your answer: " )
 (assert (ifYesNochoise6 (read))))
 :;---------------R13----------------------
 (defrule Tail_oval13
(ifYesNochoise6 present)
?retractChy <- (ifYesNochoise6 present)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Cobra , Highly venomous !!!"crlf crlf ))
:;-----------------R14--------------------
(defrule Tail_oval14
(ifYesNochoise6 absent)
?retractChy <- (ifYesNochoise6 absent)
(not (ifYesNochoise7 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Number of white bands in the body (one|Two)"crlf crlf  " Your answer: " )
 (assert (ifYesNochoise7 (read))))
 :;----------------R15-------------------
(defrule Tail_round15
(ifYesNochoise7 one)
?retractChy <- (ifYesNochoise7 one)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Sri Lankan Krait , Highly venomous !!!"crlf crlf )) 
:;----------------R16-------------------
(defrule Tail_round16
(ifYesNochoise7 Two)
?retractChy <- (ifYesNochoise7 Two)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Common Lankan Krait , Highly venomous !!!"crlf crlf )) 
:;-----------------R17---------------------
(defrule Tail_round17
(iffoundChoice1 1)
?retractChy <- (iffoundChoice1 1)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Merrem's Hump-nosed viper , Highly venomous !!!"crlf crlf )
)
:;-----------------R18---------------------
(defrule Tail_round18
(iffoundChoice1 1)
?retractChy <- (iffoundChoice1 2)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Millard's Hump-nosed viper , Highly venomous !!!"crlf crlf )
)
:;-----------------R19---------------------
(defrule Tail_round19
(iffoundChoice1 1)
?retractChy <- (iffoundChoice1 3)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Lowland's Hump-nosed viper , Highly venomous !!!"crlf crlf )
)
:;----------------R20---------------------
(defrule Tail_round20
(iffoundChoice 2)
?retractChy <- (iffoundChoice 2)
(not (ifYesNochoise8 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a sea snake, Highly venomous !!!"crlf crlf 
"Head and Neck is (distinct|not)"crlf crlf  " Your answer: ")
(assert (ifYesNochoise8 (read))))
:;----------------R21---------------------
(defrule Tail_round21
(ifYesNochoise8 distinct)
?retractChy <- (ifYesNochoise8 distinct)
(not (iffoundChoice2 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Body colour is(1|2)"crlf crlf 
"1.) Olive yellow colour" crlf crlf 
"2.)greyish colour" crlf crlf 
 " Your answer: ")
(assert (iffoundChoice2 (read))))
:;----------------R22----------------------
(defrule Tail_round22
(iffoundChoice2 2)
 ?retractChy <- (iffoundChoice2 2)
 =>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Slender sea snake, Highly venomous !!!"))
:;----------------R23----------------------
(defrule Tail_round23
(iffoundChoice2 1)
 ?retractChy <- (iffoundChoice2 1)
 (not (iffoundChoice3 ?))
 =>
(retract ?retractChy)
(printout t crlf crlf crlf "body is having....."crlf crlf 
"1.)Dark Transverse Bands" crlf crlf 
"2.)Black Dorsal spots" crlf crlf 
 " Your answer: ")
(assert (iffoundChoice3 (read))))
:;------------------R24----------------------
(defrule Tail_round24
(iffoundChoice3 1)
?retractChy <- (iffoundChoice3 1)
 =>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Annulated sea snake, Highly venomous !!!"))
:;------------------R25----------------------
(defrule Tail_round25
(iffoundChoice3 2)
?retractChy <- (iffoundChoice3 2)
 =>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Jerdon's sea snake, Highly venomous !!!"))
:;------------------R26-----------------------
(defrule Tail_round26
(ifYesNochoise8 not)
?retractChy <- (ifYesNochoise8 not)
(not (iffoundChoice4 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Body colour is(1|2|3|4)" crlf crlf 
"1.)yellow colour" crlf crlf 
"2.)Shiny black/dark olive" crlf crlf 
"3.)Cream white - pale grey" crlf crlf 
"4.)Greish green/olive brown" crlf crlf 
 " Your answer: ")
(assert (iffoundChoice4 (read))))
:;------------------R27-----------------------
(defrule Tail_round27
(iffoundChoice4 1)
?retractChy <- (iffoundChoice4 1)
(not (iffoundChoice5 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "ventrical Scales are..(1|2)" crlf crlf 
"1.)Feebly imbricate or smooth" crlf crlf 
"2.)Irreguler in shape and indistincs in shape than other body scales" crlf crlf 
 " Your answer: ")
(assert (iffoundChoice5 (read))))
:;-----------------R28-------------------------
(defrule Tail_round28
(iffoundChoice5 1)
?retractChy <- (iffoundChoice5 1)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a yellow sea snake" crlf crlf 
:;-----------------R29-------------------------
(defrule Tail_round29
(iffoundChoice5 2)
?retractChy <- (iffoundChoice5 2)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a yellow belly sea snake" crlf crlf 
:;-----------------R30-------------------------
(defrule Tail_round30
(iffoundChoice4 2)
?retractChy <- (iffoundChoice4 2)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Striped sea snake" crlf crlf 
:;-----------------R31-------------------------
(defrule Tail_round31
(iffoundChoice4 4)
?retractChy <- (iffoundChoice4 4)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Beak sea snake" crlf crlf 
:;----------------R32--------------------------
(defrule Tail_round32
(iffoundChoice4 3)
?retractChy <- (iffoundChoice4 3)
(not (iffoundChoice6 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Have spike like scales..(yes|no)" crlf crlf 
 " Your answer: ")
(assert (iffoundChoice6 (read))))
:;-----------------R33-------------------------
(defrule Tail_round31
(iffoundChoice6 yes)
?retractChy <- (iffoundChoice6 yes)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Arabian Gulf sea snake" crlf crlf 
:;------------------R34------------------------
(defrule Tail_round34
(iffoundChoice6 no)
?retractChy <- (iffoundChoice6 no)
(not (iffoundChoice7 ?))
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Colour of Belly region is..(white|cream)" crlf crlf 
 " Your answer: ")
(assert (iffoundChoice7 (read))))
:;----------------R35-------------------------
defrule Tail_round35
(iffoundChoice7 white)
?retractChy <- (iffoundChoice7 white)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Oronte sea snake" crlf crlf 
:;----------------R36-------------------------
defrule Tail_round35
(iffoundChoice7 cream)
?retractChy <- (iffoundChoice7 cream)
=>
(retract ?retractChy)
(printout t crlf crlf crlf "Thats probably a Viperine sea snake" crlf crlf 








