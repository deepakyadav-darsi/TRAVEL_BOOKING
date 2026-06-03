CLASS zcl_rap_eml_dpk DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_eml_dpk IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  read entities of zi_rap_travel_dpk
*  entity travel
**  fields ( AgencyID CustomerID )
*all fields
*  with value #( ( TravelUUID = 'AD06D4F02FEE09E11900F00EB0D65790' ) )
*  result data(travels).
*
*  out->write( travels ).

*read entities of zi_rap_travel_dpk
*entity travel by \_Booking
*ALL FIELDS WITH value  #( ( TravelUUID = 'AD06D4F02FEE09E11900F00EB0D65790' ) )
*result data(bookings).

"unsucessful Read
*read entities of zi_rap_travel_dpk
*entity travel
*ALL FIELDS WITH value #( ( TravelUUID = '11111111111111111111111111111111') )
*result data(travels)
*failed data(failed)
*reported data(reported).
*
*out->write( travels ).
*out->write( failed ). "complex structures not supported by the console output
*out->write( reported ). "complex structures not supported by the console output

**"modify update
**
**MODIFY ENTITIES OF zi_rap_travel_dpk
**entity travel
**update
**set fields with value
**#( ( TravelUUID = 'AD06D4F02FEE09E11900F00EB0D65790'
**      Description = 'I like RAP@openSAP' ) )
**
**failed data(failed)
**reported data(reported).
**
**"step 6b commit entities
**
**
**commit entities
**RESPONSE OF zi_rap_travel_dpk
**
**failed data(failed_commit)
**reported data(reported_commit).
**
**out->write( 'update done' ).


**"modify create
**modify entities of zi_rap_travel_dpk
**entity travel
**create
**set fields with value
**#( ( %cid = 'MyContentID_1'
**     AgencyID = '70012'
**     CustomerID = '14'
**     BeginDate = cl_abap_context_info=>get_system_date(  )
**     EndDate = cl_abap_context_info=>get_system_date(  ) + 10
**     Description = 'I like RAP@openSAP'    ) )
**
**mapped data(mapped)
**failed data(failed)
**reported data(reported).
**
**out->write( mapped-travel ).
**
**commit ENTITIES
**RESPONSE of zi_rap_travel_dpk
**failed data(failed_commit)
**reported data(reported_commit).
**
**out->write( 'Create Done' ).

"modify delete

modify ENTITIES OF zi_rap_travel_dpk
ENTITY travel
delete from
value #( ( TravelUUID = 'AD06D4F02FEE09E11900F00EB0D65790' ) )

failed data(failed)
reported data(reported).

commit entities
RESPONSE OF zi_rap_travel_dpk
failed data(failed_commit)
reported  data(reported_commit).

out->write( 'Delete Done' ).









  ENDMETHOD.
ENDCLASS.
