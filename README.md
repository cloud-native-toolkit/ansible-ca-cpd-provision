# ansible-ca-cpd-provision
Automation to setup a tethered namespace for multiple CA instances on a CPD cluster

This automates the install of a Cognos Analytics instance into a tethered CloudPak for Data install.

 Requires:
  - CloudPak for Data Enterprise 4.6.4+ installed
  - cpd-cli installed and accessible where running the ansible

 Define the following required environment variables:
  CA_NAMESPACE : namespace where to install the CA instance
  CPD_NAMESPACE: namespace of the CPD control plane install
  OCP_TOKEN: OCP login token
  OCP_SERVER: OCP server url
  OLM_UTILS_TTY_OFF: mandatory this is set to true

To Run:

1. Clone the repo
2. Edit the `ca-vars.sh` file environment variables for your environment

`$ source ./ca-vars.sh`

3. Run the playbook

`$ ansible-playbook tether_ca.yml`

If you are installing for the first time you need to set `INSTALL_CA_OP="False"` otherwise leave it as the default.

It will take about an hour to install for the first time, much less for subsequent installs of just tethering the namespace.

Post Install:

To install the actual CA instance to the tethered namespace, do that throught the Cloud Pak for Data User Interface.
Create a CA instance, then select the namespace you just tethered with this automation. Select the platform connection to use for 
the CA content store database.
