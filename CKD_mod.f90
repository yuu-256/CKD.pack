module CKD

  implicit none

contains

  subroutine CKD_INTEGRATION()
  
    !!! DECLARATION:
    implicit none

    !!! EXECUTION:
    call DISPLAY_START()

    call INITIALIZATION()

    do iw=1,nbnd

      call CHECK_BANDCOND()
        
      call GET_PROP()

      call CALC_FLUX()

      call INCREMENT()

    end do
      
    call DISPLAY_END()

  end subroutine CKD_integration


end module CKD
