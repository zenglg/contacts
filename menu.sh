#!/bin/sh

contacts_print_all()
{
	echo "contacts_print_all"
}

contacts_add()
{
	echo "contacts_add"
}

contacts_del()
{
	echo "contacts_del"
}

contacts_menu()
{
	local choose

	contacts_print_all
	echo "A: add   D: del   Q: quit"
	read choose
	case ${choose} in
		"a" | "A")
			contacts_add
			;;
		"d" | "D")
			contacts_del
			;;
		"q" | "Q")
			exit 0
			;;
		*)
			echo "No such command!"
			;;
	esac
}

while ((1))
do
	contacts_menu
done
