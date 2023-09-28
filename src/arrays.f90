program arrays
    implicit none

    ! test with single dimension - data declaration
    ! integer, dimension(1:4) :: a = (/ 1, 2, 3, 4 /)
    ! integer, dimension(2)   :: b

    ! test with multiple dimensions - data declaration
    integer, dimension(2,3) :: c = reshape((/ 1, 2, 3, 4, 5, 6 /), shape(c))
    character(len=8)        :: s1 = '-2 -2 -2'
    character(len=3)        :: s2 = '999'
    character(len=2*3)      :: s3 = '123456'

    ! test with single dimension - code
    ! print *, a
    ! b = a(2:3)  ! copies a segment of a into b
    ! print *, b
    ! b(1) = 5
    ! print *, b
    ! print *, a

    ! test with multiple dimensions - code
    ! print array in default mode, i.e. row by row like a matrix
    print *, c
    print *
    ! print the column vectors one by one
    print *, 'columns:'
    print *, c(:,1)
    print *, c(:,2)
    print *, c(:,3)
    print *
    ! print the row vectors one by one
    print *, 'rows:'
    print *, c(1,:)
    print *, c(2,:)
    print *
    ! multiply all values from the second row by 2
    c(2,:) = c(2,:) * 2
    print *, c(1,:)
    print *, c(2,:)
    print *
    ! set all values from the second row to -1
    c(2,:) = -1
    print *, c(1,:)
    print *, c(2,:)
    print *
    ! read values from string s1 into the first row
    read(s1, *) c(1,:)
    print *, c(1,:)
    print *, c(2,:)
    print *
    ! read values from string s2 into the first row without separator
    read(s2, '(I1, I1, I1)') c(2,:)
    print *, c(1,:)
    print *, c(2,:)
    print *
    ! read values from string s3 into the whole array without separator
    read(s3, '(6(I1))') c
    print *, c(1,:)
    print *, c(2,:)
end program arrays
