program complex
    implicit none

    ! different type of complex numbers
    complex          :: c1 = (1,2)
    complex(kind=4)  :: c2 = (1,2)
    complex(kind=8)  :: c3 = (1,2)
    complex(kind=16) :: c4 = (1,2)
    integer          :: r, i

    print *, c1, (c1 / 2)
    print *, c2, (c2 / 2)
    print *, c3, (c3 / 2)
    print *, c4, (c4 / 2)
    r = 3
    i = 5
    c1 = cmplx(r, i)
    print *, c1, (c4 / 2)
end program complex
