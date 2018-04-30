alias orgopen='sfdx force:org:open'
alias save='sfdx force:source:push'
alias pull='sfdx force:source:pull'

sfdx force:source:convert -r force-app -d ./mdsrc -n 'TrailHead'

sfdx force:mdapi:deploy -d ./mdsrc -u tp_org -w 2
orgopen -p one/one.app#/sObject/Contact/list?filterName=Recent

sfdx force:data:tree:export -q "SELECT Name,(SELECT Name, Description,  Amount, Probability,  CloseDate,  NextStep  FROM opportunities) FROM ACCOUNT" -d ./data/sfdx-out -u tp_org