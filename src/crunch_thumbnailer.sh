#! /bin/sh

# Author:  Thomas DEBESSE <dev@illwieckz.net>
# License: ISC

_help() {
	cat <<-EOF
	USAGE: ${0} -s SIZE INFILE OUTFILE
	EOF

	exit 1
}

_main() {
	if [ "x${1}" = 'x-h' -o "x${1}" = 'x--help' ]
	then
		_help
	fi

	if [ "x${1}" != 'x-s' ]
	then
		_help
	fi

	if [ "x${2}" = 'x' ]
	then
		_help
	else
		SIZE="${2}"
	fi

	if [ "x${3}" = 'x' ]
	then
		_help
	else
		INFILE="${3}"
	fi

	if [ "x${4}" = 'x' ]
	then
		_help
	else
		OUTFILE="${4}"
	fi

	crunch -quiet -file "${INFILE}" -fileformat 'tga' -out '/dev/stdout' | convert -thumbnail "${SIZE}x${SIZE}" tga:- "${OUTFILE}"
}

_main "${1}" "${2}" "${3}" "${4}"

#EOF
