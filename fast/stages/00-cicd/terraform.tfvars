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
outputs_location = "~/fast-config"

github = {
  url        = null # Or GitHub Enterprise base URL
  visibility = "private"
}

cicd_repositories = {
  bootstrap = {
    branch            = null
    identity_provider = null
    name              = "meshGcpFabricFast/fast-bootstrap"
    description       = "Google Cloud bootstrapping"
    type              = "github"
    create            = true
    create_group      = true
  }
  cicd = {
    branch            = null
    identity_provider = null
    name              = "meshGcpFabricFast/fast-cicd"
    description       = "Fabric FAST CI/CD setup"
    type              = "github"
    create            = true
    create_group      = true
  }
  resman = {
    branch            = "main"
    identity_provider = null
    name              = "meshGcpFabricFast/fast-resman"
    description       = "Google Cloud resource management"
    type              = "github"
    create            = true
    create_group      = true
  }
  networking = {
    branch            = "main"
    identity_provider = null
    name              = "meshGcpFabricFast/fast-networking"
    description       = "Google Cloud networking setup"
    type              = "github"
    create            = true
    create_group      = true
  }
  security = {
    branch            = "main"
    identity_provider = null
    description       = "Google Cloud security settings"
    name              = "meshGcpFabricFast/fast-security"
    type              = "github"
    create            = true
    create_group      = true
  }
  data-platform = {
    branch            = "main"
    identity_provider = null
    name              = "meshGcpFabricFast/fast-data-platform"
    description       = "Google Cloud data platform"
    type              = "github"
    create            = true
    create_group      = true
  }
  project-factory = {
    branch            = "main"
    identity_provider = null
    name              = "meshGcpFabricFast/fast-project-factory"
    description       = "Google Cloud project factory"
    type              = "github"
    create            = true
    create_group      = true
  }
}