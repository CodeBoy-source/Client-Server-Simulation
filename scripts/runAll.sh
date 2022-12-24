# Get Script Directory to later find the bin path
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

declare -a tlleg=(0.15 0.3 0.6 9 540 1.5 15 90)
declare -a tserv=(0.1 0.2 0.4 6 360 1 10 60)

MEAN=10
types=2
sz_tlleg=${#tlleg[@]}
for (( j = 0; j < sz_tlleg ; j++ )); do
    $SCRIPT_DIR/../bin/cliente_servidor ${tlleg[j]} ${tserv[j]} 10000 1 $MEAN
    $SCRIPT_DIR/../bin/cliente_servidor_variable ${tlleg[j]} ${tserv[j]} 10000 1 $MEAN
done
