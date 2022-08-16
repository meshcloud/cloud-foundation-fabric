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

team_folders = {
  team-example = {
    descriptive_name = "Team Example"
    group_iam = {
      "team-example@gcpfast.dev.meshcloud.io" = [
        "roles/viewer"
      ]
    }
    impersonation_groups = ["team-example-admins@gcpfast.dev.meshcloud.io"]
  }

  meshstack = {
    descriptive_name = "meshStack"
    group_iam = {
      "meshstack@gcpfast.dev.meshcloud.io" = [
        "roles/viewer"
      ]
    }
    impersonation_groups = ["meshstack-admins@gcpfast.dev.meshcloud.io"]
  }

  meshstacklz1 = {
    descriptive_name = "meshStack LZ-1"
    group_iam = {
      "meshstack-lz-1@gcpfast.dev.meshcloud.io" = [
        "roles/viewer"
      ]
    }
    impersonation_groups = ["meshstack-lz-1-admins@gcpfast.dev.meshcloud.io"]
  }
}
