
# Goal: script to count objects in all topic lists (CSV)

echo "===================="
echo "===================="
echo "Filename: $1"
echo "Count of: topics"

echo "====="
echo "Concept"
echo -n "Number: "
grep -h "^Concept," $1 | wc -l
echo -n "Unique: "
grep -h "^Concept," $1 | cut -c-100 | sort -u | wc -l

echo "====="
echo "Task"
echo -n "Number: "
grep -h "^Task," $1 | wc -l
echo -n "Unique: "
grep -h "^Task," $1 | cut -c-100 | sort -u | wc -l

echo "====="
echo "Reference"
echo -n "Number: "
grep -h "^Reference," $1 | wc -l
echo -n "Unique: "
grep -h "^Reference," $1 | cut -c-100 | sort -u | wc -l

echo "====="
echo "Troubleshooting"
echo -n "Number: "
grep -h "^Troubleshooting," $1 | wc -l
echo -n "Unique: "
grep -h "^Troubleshooting," $1 | cut -c-100 | sort -u | wc -l

# # #

