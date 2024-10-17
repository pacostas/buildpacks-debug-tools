## Test locally

### Push image worfklow

Create below files:

```bash
cat <<EOF > my.secrets
PAKETO_BOT_GITHUB_TOKEN=
PAKETO_BUILDPACKS_DOCKERHUB_USERNAME=
PAKETO_BUILDPACKS_DOCKERHUB_PASSWORD=
GCR_PUSH_BOT_JSON_KEY=
EOF
```

```bash
cat <<EOF > push-image.dispatch.event.json
{
  "inputs": {
    "version": "0.0.88"
  }
}
EOF
```

Run the command:

```bash
act workflow_dispatch -W .github/workflows/push-image.yml -P ubuntu-22.04=-self-hosted -e ./push-image.dispatch.event.json -j push --env GITHUB_REPOSITORY="pacostas/ubi-base-stack" --env GCR_REGISTRY=gchr.io --env GCR_USERNAME=pacostas --secret-file="./my.secrets"
```

Probaly will get an error due to 0.0.80 tag does not exist and therefore a release, create a release in your repo with this tag.

Release info sample files:

- [ubi-release-info](/sample_files/release_info_ubi.json)
- [jammy-release-info](/sample_files/release_info_jammy.json)

### Create release workflow

Create below files:

```bash
cat <<EOF > my.secrets
PAKETO_BOT_GITHUB_TOKEN=
PAKETO_BUILDPACKS_DOCKERHUB_USERNAME=
PAKETO_BUILDPACKS_DOCKERHUB_PASSWORD=
EOF
```

Run the command:

```bash
act schedule --artifact-server-path /home/costas/Desktop/ubi-base-stack/artifacts   --input version=1.1.1   --input force=true -W .github/workflows/create-release.yml -P ubuntu-22.04=-self-hosted    --env GITHUB_REPOSITORY="paketo-community/ubi-base-stack"   --secret-file="./my.secrets"  -j preparation 
```