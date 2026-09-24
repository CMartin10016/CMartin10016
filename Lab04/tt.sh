#!/bin/bash

user-guide () {
	echo "Task Tracker Commands:"
	echo "ADD: "
	echo "bash tt.sh add [TASK] | bash tt.sh add"
	echo "Adds given argument to list of tasks, or if no argument is given, asks for input and adds task."
	echo ""
	echo "REMOVE:"
	echo "bash tt.sh remove [TASK] | bash tt.sh remove"
	echo "Removes given argument or input to list of tasks, or if task does not exist, reports error."
	echo ""
	echo "VIEW: "
	echo "bash tt.sh view"
	echo "Outputs all current tasks."
	echo ""
	echo "CLEAR: "
	echo "bash tt.sh clear"
	echo "Prompts for confirmation, then clears all current tasks."
}

remove_task () {
        grep -q "$1" ~/.tasks
        if [[ $? -eq 0 ]]; then
                sed -i "/$1/d" ~/.tasks
        else
                echo "ERROR: $1 not found within tasks."
        fi

}

case $1 in
        add)
         	if [[ $# -eq 2 ]]; then
			echo $2 >> ~/.tasks
		else
			echo "Input task to add: "
			read task
			echo $task >> ~/.tasks
		fi	
        ;;

        remove)
		if [[ $# -eq 2 ]]; then
                        remove_task $2
                else
                        echo "Input task to remove: "
                        read task
                        remove_task $task
                fi
        ;;

        view)
                cat ~/.tasks
        ;;

        clear)
		echo "Really delete all tasks? (input y to clear)"
		read clearinput
		if [[ clearinput -eq "y" ]]; then
			rm ~/.tasks
		fi
        ;;

        help)
                user-guide
        ;;

	*)
		echo "Invalid argument for command."
	;;
esac
