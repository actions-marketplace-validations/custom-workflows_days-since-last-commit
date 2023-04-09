last_commit_date=$(git log -1 --format="%cd" --date=short)
current_date=$(date +%Y-%m-%d)

last_commit_date_in_seconds=$(date -d "$last_commit_date" +%s)
current_date_in_seconds=$(date -d "$current_date" +%s)

seconds_since_last_commit=$((current_date_in_seconds - last_commit_date_in_seconds))
days_since_last_commit=$((seconds_since_last_commit / 86400))

echo "$days_since_last_commit"
