# custom-workflows/days-since-last-commit

GitHub Action to determine the number of days since the last commit.

## Found a bug? 💁‍♀️

Thanks for letting us know! Please [file an issue](../../issues/new?assignees=&labels=&template=bug_report.md&title=) and we should reply shortly.

## Example

Below you will find an example of how you can use this action.

```yml
name: "Commits"

on:
  workflow_dispatch:
  
jobs:
  commits:
    runs-on: "ubuntu-latest"
    
    steps:
      - name: "Checkout Repository"
        uses: "actions/checkout@v3"
        
      - name: "Fetch Days Since Last Commit"
        id: "commits"
        uses: "custom-workflows/days-since-last-commit@latest"
        
      - name: "Output Days Since Last Commit"
        run: echo ${{ steps.commits.outputs.days-since-last-commit }}
```
