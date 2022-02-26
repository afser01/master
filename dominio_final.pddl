(define (domain contenedores)
    
    (:predicates
        (trasladarse ?origen ?destino)
        (esta ?contenedor ?loc)                       
        (cargado ?contenedor ?T)  
        (procesa ?loc)
        (loc ?loc)
        (T ?T)
        (contenedor ?contenedor) 
        (vacio ?T)
        (procesado ?contenedor)
    )
    
    (:action mover
        :parameters 
            (?T
             ?origen 
             ?destino)

        :precondition 
            (and 
                (T ?T)
                (loc ?origen)
                (loc ?destino) 
                (esta ?T ?origen)
                (trasladarse ?origen ?destino))
                

        :effect 
            (and 
                (esta ?T ?destino)
                (not (esta ?T ?origen)))
                
    )
    
    (:action cargar
        :parameters 
            (?T 
             ?contenedor 
             ?loc)

        :precondition 
            (and 
                (T ?T)
                (contenedor ?contenedor)
                (loc ?loc) 
                (esta ?contenedor ?loc)
                (esta ?T ?loc)
                (vacio ?T))

        :effect 
            (and 
                (not (esta ?contenedor ?loc))
                (esta ?contenedor ?T)
                (cargado ?T ?contenedor)
                (esta ?T ?loc)
                (not (vacio ?T)))
    )

    (:action procesar
        :parameters 
            (?T
             ?contenedor 
             ?loc)

        :precondition 
            (and 
                (T ?T)
                (contenedor ?contenedor)
                (loc ?loc)
                (procesa ?loc)
                (esta ?T ?loc)
                (cargado ?T ?contenedor))                     
                           
        :effect 
            (and 
                (esta ?contenedor ?loc) 
                (not (cargado ?T ?contenedor))
                (vacio ?T)
                (procesado ?contenedor))
    )

    (:action descargar
        :parameters 
            (?T
             ?contenedor 
             ?loc)

        :precondition 
            (and 
                (T ?T)
                (contenedor ?contenedor)
                (loc ?loc)
                (esta ?T ?loc)
                (cargado ?T ?contenedor))                     
                           
        :effect 
            (and 
                (esta ?contenedor ?loc) 
                (not (cargado ?T ?contenedor))
                (vacio ?T))
    )
    
)
    