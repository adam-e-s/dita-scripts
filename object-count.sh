
# Goal: script to count objects in all topic lists (CSV)

echo "====="
echo "Count of: $1"

echo -n "Number: "
grep -h "^$1," *.csv | wc -l

echo -n "Unique: "
grep -h "^$1," *.csv | cut -c-100 | sort -u | wc -l


# # #

