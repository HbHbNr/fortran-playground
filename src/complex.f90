program complex
    implicit none

    ! different type of complex numbers
    complex          :: c1 = (1,2)
    complex(kind=4)  :: c2 = (1,2)
    complex(kind=8)  :: c3 = (1,2)
    complex(kind=16) :: c4 = (1,2)

    print *, c1
    print *, c2
    print *, c3
    print *, c4
end program complex
