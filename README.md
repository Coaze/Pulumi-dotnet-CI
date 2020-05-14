# Pulumi-dotnet-CI
Image for using Pulumi and dotnet to build and deploy cloud applications using continuous integration

The official pulumi image is great, but it doesnt include all the things needed to deploy serverless dotnet applications.
This image add on top of the official on, by providing the following tools needed:
* dotnet lambda tool (needed for packaging lambda functions in dotnet)
* zip (also needed for packaging)

In addition, pulumi will need to install different plugins to deploy to different cloud providers. This image was mainly built for deploying to AWS, so it has the AWS plugin installed, as well as the azure plugin, as pulumi somehow installs that as well even though the infrastructure is all in AWS. This would otherwise take time in the build system on every deployment, and was therefore added to the image as well.
