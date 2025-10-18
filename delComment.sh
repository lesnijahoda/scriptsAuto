soubor=$1
nazev=$(basename "$soubor")
vystup="cleaned_${nazev}"



while read line; do
    if [[ $line != //* ]]; then
        echo $line >> "$vystup"
fi
done < "$soubor"
