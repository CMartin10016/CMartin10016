#!/bin/bash

user-guide () {
	echo "ADD: bash tt.sh add 'TASK' | bash tt.sh add"
	echo "Adds given argument to list of tasks, or if no argument is given, asks for input and adds task"
	echo ""
	echo "REMOVE: bash tt.sh remove 'TASK' | bash tt.sh remove"
	echo "Removes given argument or input to list of tasks, or if task does not exist, reports error"
	echo ""
	echo "VIEW: bash tt.sh view"
	echo "Outputs all current tasks"
	echo ""
	echo "CLEAR: bassh tt.sh clear"
	echo "Prompts for confirmation, then clears all current tasks"
}

case $1 in
        add)
                echo "add commands"
        ;;

        remove)
                echo "remove commands"
        ;;

        view)
                echo "view commands"
        ;;

        clear)
                echo "clear commands"
        ;;

        help)
                user-guide
        ;;

	*)
		echo "Invalid argument for command."
	;;
esac
