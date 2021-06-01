#!/bin/sh
read -p "파일/디렉토리 이름 입력 : " filename
if [ ! -e "$filename" ];
then
	echo $filename은 존재하지 않습니다.
elif [ -d "$filename" ];
then
	echo $filename은 디렉토리파일 입니다.
elif [ -L "$filename" ];
then
        echo $filename은 심볼릭파일 입니다.
elif [ -c "$filename" ];
then
        echo $filename은 문자장치파일 입니다.
elif [ -b "$filename" ];
then
	echo $filename은 블럭장치 파일입니다.
elif [ -p "$filename" ];
then
	echo $filename은 파이프파일 입니다.
elif [ -S "$filename" ];
then
	echo $filename은 소켓파일 입니다.
elif [ -f "$filename" ];
then
	echo $filename은 보통파일 입니다.
fi
