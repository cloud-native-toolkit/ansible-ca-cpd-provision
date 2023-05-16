# Required CA Setup Variables
# -----------------------------------------------------------------------------
export CA_NAMESPACE="<namespace to install CA>"
export CPD_NAMESPACE="cpd"
export OCP_TOKEN="<insert ocp token>"
export OCP_SERVER="<insert ocp server address>"
export OLM_UTILS_TTY_OFF="true"
export INSTALL_CA_OP="False"
export PROVISION_CA="False"
#export DB_CONNECTION="<your-db-connection-name>"
#export CPD_USER="<cpd user id>"
#export CPD_PW="<cpd pw>"

# Optional Variables - these use the following defaults at runtime
# -----------------------------------------------------------------------------

#export CPD_RELEASE="4.6.4"
#export BLOCK_STORAGE_CLASS="storagecluster-ceph-rbd" 
#export FILE_STORAGE_CLASS="ocs-storagecluster-cephfs" 
#export CPD_OP_NAMESPACE="ibm-common-services" 
#export CA_SIZE="small" 
#export CA_VERSION="23.4.0" 
#export DB_CONNECTION="<your-db-connection-name>"