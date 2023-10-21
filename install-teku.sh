RELEASE_URL="https://api.github.com/repos/sigp/lighthouse/releases/latest"
LATEST_TAG="$(curl -s $RELEASE_URL | jq -r ".tag_name")"
BINARIES_URL="https://artifacts.consensys.net/public/teku/raw/names/teku.tar.gz/versions/${LATEST_TAG}/teku-${LATEST_TAG}.tar.gz"
echo Downloading URL: $BINARIES_URL

cd $HOME
# Download
wget -O teku.tar.gz $BINARIES_URL
# Untar
tar -xzvf teku.tar.gz -C $HOME
# Rename folder
mv teku-* teku
# Cleanup
rm teku.tar.gz