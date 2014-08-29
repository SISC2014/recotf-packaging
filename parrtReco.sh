export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh --quiet

#localSetupFAX --rootVersion=current-SL6
#voms-proxy-init -voms atlas

#echo "creating input file list..."
#fax-get-gLFNs valid2.117050.PowhegPythia_P2011C_ttbar.digit.AOD.e2657_s1933_s1964_r5534/ > inputDataList.txt

echo "seting up athena environment..."
#asetup 19.0.X.Y-VAL-Prod,rel_3,here --multi --projtest
asetup 19.1.X.Y-VAL,rel_2,AtlasDerivation,here

#inpFile=$(head -n 1 inputDataList.txt)

echo "Running the train..."
#Reco_tf.py --inputAODFile xAOD_mc.pool.root --outputDAODFile output --reductionConf SM3 TOP1
parrot_run -n cern.nlist -e cern.elist Reco_tf.py '--athenaopts=--loglevel=ALL' --inputAODFile xAOD_mc.pool.root --outputDAODFile mcTest --reductionConf TEST1 TEST2 TEST3 TEST4
echo "Derivation framework complete"

parrot_package_create -n cern.nlist -e cern.elist -p parrot-reco
