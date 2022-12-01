function display(){  #this is basic function
    echo "Hi there..!"
}

display #this is how function can be called


#Pass argument in function
function add(){  # first argument = $1, Second argument=$2
    local num1=$1   # This is local var. By default every variable is global variable.
    local num2=$2
    result=$(( num1 + num2 ))  # This is global var which used as return var
}

add 10 20  # 10=$1 and 20=$2
echo $result #It was global that why I can use it here.



function sub(){  # first argument = $1, Second argument=$2
    local num1=$1   # This is local var. By default every variable is global variable.
    local num2=$2
    result=$(( num2 - num1 ))  
    return $result #return
}

sub 10 20
x=$? #catch the value which return from sub
echo $x #It was global that why I can use it here.