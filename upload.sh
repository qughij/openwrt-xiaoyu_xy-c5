dir=$1
auth=$2
upload_url=$3
version=${4:-lastest}

function get_files(){
    for i in `ls $1`
     do
      if [ -d $1"/"$i ]
        then
          get_files $1"/"$i
        else
          echo $1"/"$i
      fi
    done
}

echo "=============Files to upload==========="
get_files $dir
echo "=============End of Files to upload===="

for i in `get_files $dir`
  do
     echo "Upload["$i":"$version"]"
     curl -T ${i} -u ${auth} "${upload_url}${i}?version=${version}"
    if [ ${version} != "lastest" ]
      then
        echo "Upload["$i":lastest]"
        curl -T ${i} -u ${auth} "${upload_url}${i}?version=lastest"
    fi
done
