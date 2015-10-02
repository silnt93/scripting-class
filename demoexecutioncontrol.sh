if [ "$1" = "-h" ]; then
    echo "You gave me the -h option"
    helpmode=1
fi

while ["$1" != ""] ; do
    case $1 in
        -h | --help)
            echo "Usage: `basename $0` [-h|--help] [-d|--debugmode level]"
            exit 0;
            ;;
        -d | --debugmode)
            echo "You gave me the -d option, setting debug mode"
            if [ "$2" = ""]; then
                debug=1
            else
                debug="$2"
            fi
            shift
            ;;
        *)
            echo "I don't recognize $1, sorry about your luck, chuck" 2>&1
            exit 1;
           ;;
    esac
    shift
done