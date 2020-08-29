#!/usr/bin/env bash

if ! [ -d 'venv' ]
then
    if [[ "$OSTYPE" == "msys" ]]; then
        python -m venv venv
    else
        python3 -m venv venv
    fi
fi


if [ -z "$VIRTUAL_ENV" ]; then
    if [[ "$OSTYPE" == "msys" ]]; then
        source venv/Scripts/activate
    else
        source venv/bin/activate
    fi
fi

if [[ "$OSTYPE" == "msys" ]]; then
    python -m pip install --index-url https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host pypi.tuna.tsinghua.edu.cn --trusted-host pypi.tuna.tsinghua.edu.cn -r requirements.txt
else
    python3 -m pip install --index-url https://pypi.tuna.tsinghua.edu.cn/simple --trusted-host pypi.tuna.tsinghua.edu.cn --trusted-host pypi.tuna.tsinghua.edu.cn -r requirements.txt
fi

if [[ "$OSTYPE" == "msys" ]]; then
    echo -e '\nRun `source venv/Scripts/activate` to active virtual env'
else
    echo -e '\nRun `source venv/bin/activate` to active virtual env'
fi
