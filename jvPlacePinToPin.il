procedure( jvPlacePinToPin()

        cv=geGetEditCellView()
        selected=geGetSelSet()
        geDeselectAll()

        foreach(cell selected
                ;;if(cell~>cellName=="edgebuf_unit" then
                        ;cellOrigin=cell~>xy
                        ;cellNet=car(cell~>conns~>net~>name)
                        cellNet=cell~>net~>name

                        foreach(pin cv~>shapes
                                
                                        if(pin~>purpose=="pin"&&pin~>net~>name==strcat("plld_" cellNet) then
                                        pinOrigin=pin~>bBox
                                        ;geSelectFig(pin)
                                        );if
                                
                        )       
                        cell~>bBox=pinOrigin              

                ;;);if

        );foreach
        geDeselectAll()
        geSelectFigs(selected)
)

