program helloworld2_main
    use helloworld2, only : sayhello, strtoint
    implicit none

    character(20) :: caloriesstring
    integer :: calories

    call sayhello

    caloriesstring = '2000'
    calories = strtoint(caloriesstring)
    print '(I4)',calories+1
end program helloworld2_main
