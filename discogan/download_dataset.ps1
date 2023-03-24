# datasets are cityscapes, edges2handbags, edges2shoes, facades, maps, night2day
#$FILE="facades"
$FILE="edges2shoes"
$URL="http://efrosgans.eecs.berkeley.edu/pix2pix/datasets/$FILE.tar.gz"
$TAR_FILE="./datasets/$FILE.tar.gz"
#$TARGET_DIR="./datasets/$FILE/"
$TARGET_DIR="./datasets/"
Invoke-WebRequest -Uri $URL -OutFile $TAR_FILE
New-Item -ItemType Directory -Path $TARGET_DIR
#Expand-Archive -Path $TAR_FILE -DestinationPath $TARGET_DIR
tar xzvf $TAR_FILE -C $TARGET_DIR
#Remove-Item $TAR_FILE