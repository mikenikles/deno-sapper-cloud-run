# sapper-template

This is the default Sapper (https://sapper.svelte.dev) template with two new files:
* `.dockerignore`
* `Dockerfile`
* `deploy.sh`

The `Dockerfile` exports a static site and creates an image with Deno (https://deno.land) to serve the static site.

## Deploy to Cloud Run

Review the environment variables in `./deploy.sh`.

Run `sh ./deploy.sh` from an environment that has `gcloud` installed and a project configured.

The first time you run the script, you will likely be asked to enable some APIs.