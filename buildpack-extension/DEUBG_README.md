## Test locally

### test-pull-request worfklow

Run the command:

```bash
act workflow_dispatch -W .github/workflows/test-pull-request.yml GITHUB_TOKEN=my_token -P ubuntu-22.04=-self-hosted -j integration
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
