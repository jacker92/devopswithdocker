if($args.length -eq 0) {
    Write-Error "You must provide url to clone!"
    exit 1
}

$result = $args[0]
$username = $args[1]
$password = $args[2]

Write-Host "Cloning url $result"

git clone $result
$splitted = $result.split('/')
$projectName = $splitted[$splitted.length-1]
cd $projectName

docker build -t $projectName .

docker image tag $projectName jacker92/$projectName

docker login -u $username -p $password

docker image push jacker92/$projectName

cd ..
rm -rf $projectName