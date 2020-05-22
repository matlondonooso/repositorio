cantidad=$(ls | wc -l)
function leer {
	echo "how many files are there in the current directory?"
	read numero
}
leer
while [[ $numero -ne $cantidad ]]
do
	if [[ $numero -gt $cantidad ]]
	then 
		echo "Too high"
		leer
	elif [[ $numero -lt $cantidad ]]
	then 
		echo "Too low"
		leer
	fi
done
if [[ $numero -eq $cantidad ]]
then
	echo "****************"
	echo "Congratulations!"
	echo "****************"
fi
