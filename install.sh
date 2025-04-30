#!/bin/bash
# functions
rocm () {
    sudo apt install libamd-comgr2 libhsa-runtime64-1 librccl1 librocalution0 librocblas0 librocfft0 librocm-smi64-1 librocsolver0 librocsparse0 rocm-device-libs-17 rocm-smi rocminfo hipcc libhiprand1 libhiprtc-builtins5 radeontop rocm-opencl-icd ocl-icd-libopencl1 clinfo 
    sudo usermod -aG render,video $USER
}
get_lang () {
    local lang="${LANG:0:2}"
    local available=("pt")
    if [[ " ${available[*]} " == *"$lang"* ]]; then
        ulang="$lang"
    else
        ulang="en"
    fi
    if [ $ulang == "pt" ]; then
        source ./lang/ptbr
    else
        source ./lang/en
    fi
}
# runtime
get_lang
. /etc/os-release
if [ "$ID_LIKE" == "ubuntu" ]; then
    read -p "$CHECK" user_input
    user_input=$(echo "$user_input" | tr '[:upper:]' '[:lower:]')
    if [ "$user_input" == "y" ] || [ "$user_input" == "s" ]; then
        rocm
        echo "$FINISHED"
        sleep 5
        exit 0
    else
        echo "$ABORT"
        sleep 3
        exit 0
    fi
else
    echo "$INCOMPATIBLE"
    sleep 5
    exit 1
fi