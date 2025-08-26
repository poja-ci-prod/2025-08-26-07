sudo apt-get install jq
export API_URL_SSM="`aws ssm get-parameter --name /t-d4ea8b7d-6c72cafc/$1/api/url`"
export API_URL=`echo $API_URL_SSM | jq -r '.Parameter.Value'`
curl --fail "$API_URL$2"