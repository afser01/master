(define (problem tren)

    (:domain 
        contenedores    
    )
    
    (:objects
        T P F1 F2 A
        contenedor1
        contenedor2
        contenedor3
        contenedor4
        contenedor5
        contenedor6
        contenedor7
        contenedor8 

    )
    
    (:init
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;; definición de las locaciones;;;;;;;;;;;;;;;;;;;;;
        
        (loc P)
        (loc F1)
        (loc F2)
        (loc A) 
    
    ;;;;;;;;;; contenedores;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
        (contenedor contenedor1)
        (contenedor contenedor2)
        (contenedor contenedor3)
        (contenedor contenedor4)
        (contenedor contenedor5)
        (contenedor contenedor6)
        (contenedor contenedor7)
        (contenedor contenedor8)
    
    ;;;;;;;;;;;;;conexiones o lugares a los que el tren puede trasladarse;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
    
        (trasladarse A P)
        (trasladarse P F2)
        (trasladarse F2 F1)
        (trasladarse F1 A)
        (trasladarse P A)
        (trasladarse F2 P)
        (trasladarse F1 F2)
        (trasladarse A F1)           
    
    ;;;;;;;;;;;;;;;estado inicial de los contenedores;;;;;;;;;;;;;;;;;;;;;;;;;;;
    
        (esta contenedor1 P) 
        (esta contenedor2 P)
        (esta contenedor3 P)
        (esta contenedor4 P)
        (esta contenedor5 P)
        (esta contenedor6 P)
        (esta contenedor7 P)
        (esta contenedor8 P)
      
      
    ;;;;;;;;;;;;;;;;fabricas que pueden procesar;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
    
        (procesa F1)
        (procesa F2)
 
    ;;;;;;;;;;;;;;;;estado inicial del tren;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
    
        (T T)
        (vacio T)
        (esta T A)
    )
    
    (:goal (and (procesado contenedor1)
                (procesado contenedor2)
                (procesado contenedor3)
                (procesado contenedor4)
                (procesado contenedor5)
                (procesado contenedor6)
                (procesado contenedor7)
                (procesado contenedor8)
                (esta contenedor1 A)
                (esta contenedor2 A)
                (esta contenedor3 A)
                (esta contenedor4 A)
                (esta contenedor5 A)
                (esta contenedor6 A)
                (esta contenedor7 A)
                (esta contenedor8 A)
                (esta T P))
    )
)