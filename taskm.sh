#!/bin/bash
f="$1"


if [ -z "$1" ]; then
    echo "нет имени файла"
    exit 1
fi

if [ -f "$f" ]; then  
        echo "файл есть"
else
        echo "файла нет"
	exit 1
fi




x() {
    echo "$1" >> "$f"
    echo "новая задача: $1"
}


z() {
    if [ ! -f "$f" ]; then
        echo "error"
        return
    fi
    echo "задачи:"
    cat "$f"
}


while qwe=1; do
    echo "1-посмотреть зачади,2-добавить,3 выйти"
    read action

    if [ "$action" == "1" ]; then
        z
    elif [ "$action" == "2" ]; then
	read "task"
        x "$task"
    elif [ "$action" == "3" ]; then
        break
    else
        echo "Error"
    fi
done

exit 0
