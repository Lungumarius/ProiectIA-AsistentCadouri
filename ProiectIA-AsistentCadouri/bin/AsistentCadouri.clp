(deftemplate ask  (slot intrebare)(slot raspuns))

(assert (ask  (intrebare nil)(raspuns nil)))

(defrule r1
    (ask  (intrebare nil)(raspuns nil))
    
    =>
    (printout t "Pentru cine cumparati cadoul?(iubit/iubita/coleg/colega/familie)" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Pentru cine cumparati cadoul?")(raspuns ?r)))
    )

(defrule r2.1
    (ask  (intrebare "Pentru cine cumparati cadoul?")(raspuns iubit))
    
    =>
    (printout t "Ce varsta are iubitul dumneavoastra?(18-25/26-35/36-50+)" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Ce varsta are iubitul dumneavoastra?(18-25/26-35/36-50+)")(raspuns ?r)))
    )
(defrule r2.2
    (ask  (intrebare "Pentru cine cumparati cadoul?")(raspuns iubita))
    
    =>
    (printout t "Ce varsta are iubita dumneavoastra?(18-25/26-35/36-50+)" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Ce varsta are iubita dumneavoastra?(18-25/26-35/36-50+)")(raspuns ?r)))
    )
(defrule r2.3
    (ask  (intrebare "Pentru cine cumparati cadoul?")(raspuns coleg))
    
    =>
    (printout t "Cat de apropiat sunteti de colegul dumneavoastra?(coleg/prieten)" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Cat de apropiat sunteti de colegul dumneavoastra?(coleg/prieten)")(raspuns ?r)))
    )
(defrule r2.4
    (ask  (intrebare "Pentru cine cumparati cadoul?")(raspuns colega))
    
    =>
    (printout t "Cat de apropiat sunteti de colega dumneavoastra?(colega/prietena)" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Cat de apropiat sunteti de colega dumneavoastra?(colega/prietena)")(raspuns ?r)))
    )
(defrule r2.5
    (ask  (intrebare "Pentru cine cumparati cadoul?")(raspuns familie))
    
    =>
    (printout t "Membrul familiei este barbat sau femeie?" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Membrul familiei este barbat sau femeie?")(raspuns ?r)))
    )

(defrule r3.1
    (ask  (intrebare "Ce varsta are iubitul dumneavoastra?(18-25/26-35/36-50+)")(raspuns 18-25))
    =>
    (printout t "Parfum" crlf)
    )
(defrule r3.2
    (ask  (intrebare "Ce varsta are iubitul dumneavoastra?(18-25/26-35/36-50+)")(raspuns 26-35))
    
    =>
    (printout t "Ceas" crlf)
    
    )
(defrule r3.3
    (ask  (intrebare "Ce varsta are iubitul dumneavoastra?(18-25/26-35/36-50+)")(raspuns 36-50+))
    
    =>
    (printout t "Cravata" crlf)
    
    )
(defrule r3.4
    (ask  (intrebare "Ce varsta are iubita dumneavoastra?(18-25/26-35/36-50+)")(raspuns 18-25))
    
    =>
    (printout t "Cercei" crlf)
    
    )
(defrule r3.5
    (ask  (intrebare "Ce varsta are iubita dumneavoastra?(18-25/26-35/36-50+)")(raspuns 26-35))
    
    =>
    (printout t "Colier / Esarfa" crlf)
    
    )
(defrule r3.6
    (ask  (intrebare "Ce varsta are iubita dumneavoastra?(18-25/26-35/36-50+)")(raspuns 36-50+))
    
    =>
    (printout t "Vacanta de un weekend" crlf)
    
    )
(defrule r4.1
    (ask  (intrebare "Cat de apropiat sunteti de colega dumneavoastra?(colega/prietena)")(raspuns colega))
    
    =>
    (printout t "Sticla de vin / Accesoriu birou" crlf)
    
    )
(defrule r4.2
    (ask  (intrebare "Cat de apropiat sunteti de colega dumneavoastra?(colega/prietena)")(raspuns prietena))
    
    =>
    (printout t "Ciocolata / Crema de maini" crlf)
    
    )
(defrule r4.3
    (ask  (intrebare "Cat de apropiat sunteti de colegul dumneavoastra?(coleg/prieten)")(raspuns coleg))
    
    =>
    (printout t "Felicitare amuzanta / Prajitura" crlf)
    
    )
(defrule r4.4
    (ask  (intrebare "Cat de apropiat sunteti de colegul dumneavoastra?(coleg/prieten)")(raspuns prieten))
    
    =>
    (printout t "Bilete concert" crlf)
    
    )
(defrule r5.1
    (ask  (intrebare "Membrul familiei este barbat sau femeie?")(raspuns barbat))
    
    =>
    (printout t "Este membrul familiei copil / adolescent / adult?" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Este membrul familiei copil / adolescent / adult?")(raspuns ?r)))
    )
(defrule r5.2
    (ask  (intrebare "Membrul familiei este barbat sau femeie?")(raspuns femeie))
    
    =>
    (printout t "Este membra familiei copil / adolescenta / adult?" crlf)
    (bind ?r (read))
    (assert (ask  (intrebare "Este membra familiei copil / adolescenta / adult?")(raspuns ?r)))
    )
(defrule r6.1
    (ask  (intrebare "Este membrul familiei copil / adolescent / adult?")(raspuns copil))
    
    =>
    (printout t "Puzzle / Animal de plus" crlf)
    
    )
(defrule r6.2
    (ask  (intrebare "Este membrul familiei copil / adolescent / adult?")(raspuns adolescent))
    
    =>
    (printout t "Casti / Card cadou Playstation / Xbox" crlf)
    
    )
(defrule r6.3
    (ask  (intrebare "Este membrul familiei copil / adolescent / adult?")(raspuns adult))
    
    =>
    (printout t "Portofel" crlf)
    
    )
(defrule r6.4
    (ask  (intrebare "Este membra familiei copil / adolescenta / adult?")(raspuns copil))
    
    =>
    (printout t "Set de colorat / Animal de plus" crlf)
    
    )
(defrule r6.5
    (ask  (intrebare "Este membra familiei copil / adolescenta / adult?")(raspuns adolescenta))
    
    =>
    (printout t "Makeup / Ochelari de soare" crlf)
    
    )
(defrule r6.6
    (ask  (intrebare "Este membra familiei copil / adolescenta / adult?")(raspuns adult))
    
    =>
    (printout t "Lumanare parfumata / Cana cu mesaj" crlf)
    
    )




(run)
