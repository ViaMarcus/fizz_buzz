def fizz_buzz(*args)
    number = args.size == 0 ? 0 : args[0].to_i
    if number > 0
        number%5== 0 ? (number%3 == 0 ? 'fizz buzz' : 'buzz') : (number%3 == 0 ? 'fizz' : number)
    else
        "nope"
    end
end
#if number is a float, returns it converted to int, otherwise as per spec, $SAD_PATH = "nope"
def fizz_buzz_hard(*args)
    number = args.size == 0 ? 0 : args[0].to_i
    if number > 0
        (number%5 == 0 || number%10 == 5 || number/10 == 5) ? 
            (number%3 == 0 || number%10 == 3 || number/10 ==3) ?
            'fizz buzz' : 'buzz' :
        ((number%3 == 0 || number%10 == 3 || number/10 ==3) ? 'fizz' : number)
    else
        "nope"
    end
end