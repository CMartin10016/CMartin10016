#!/bin/bash

user-guide () {
	echo "ADD: bash tt.sh add 'TASK_TO_ADD' OR bash tt.sh add"
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
                echo "help commands"
        ;;

	*)
		echo "Invalid argument for command."
	;;
esac
