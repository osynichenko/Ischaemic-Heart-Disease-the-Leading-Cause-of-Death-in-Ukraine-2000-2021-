for f in data/raw/Top_10_C_of_D_Ukr_*.json; do
  year=$(echo "$f" | grep -oE '[0-9]{4}')
  rate=$(jq -r '.value[] | select(.DIM_GHECAUSE_TITLE=="Ischaemic heart disease") | .VAL_DTHS_RATE100K_NUMERIC' "$f")
  echo "$year,$rate"
done | sort