recotf-ptu
==========

PTU package created for an ATLAS Derivation Framework example. 

This application takes input: xAOD_mc.pool.root. It is located at http://stash.osgconnect.net/~rkommineni/xAOD_mc.pool.root 
(because of the size limit on GitHub). Output is a set of 4 .root files. Successful execution should result in an 
output log that ends with "corruption test passed" on each .root file and the application exits with a code 0.

This experiment is conducted on an ATLAS Connect machine as the setup and the execution requires CVMFS(Cern VM File System).

1. To start with, clone this repository. 
    git clone https://github.com/SISC2014/recotf-ptu.git
2. Also, copy the input file into the current directory. 
    wget http://stash.osgconnect.net/~rkommineni/xAOD_mc.pool.root
3. Run the script. 
    source ptuReco.sh

Script in this repository sets up the required ATLAS environment and runs PTU in the audit phase that captures the 
execution of the application. Script run successfully should create a directory named ptu-Reco in the current directory.

ptu-Reco is now a self-contained package that can be transferred to other Linux machines(Please refer http://www.pgbovine.net/cde.html
for any restrictions).

NOTE: It is required that PTU packages are transferred as tarball.

NOTE: Please find more details on how to install PTU and its usage at https://github.com/SISC2014/provenance-tools
