# fetch the required id by running `gcloud beta billing accounts list`
billing_account={
    id="01D314-7440C3-FC79F2"
    organization_id="632614034120"
}
# get the required info by running `gcloud organizations list`
organization={
    id="93941034455"
    domain="gcpfast.dev.meshcloud.io"
    customer_id="C03eip72k"
}
# create your own 4-letters prefix
prefix="mesh"

# comment out if you want to leverage automatic generation of configs
outputs_location = "../../config"

organization_policy_configs = {
    allowed_policy_member_domains = [
        "C028009kx"
    ]
}
