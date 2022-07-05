# Get Started with Terraform and cloudfoundry
Learn Terraform and Cloudfoundry, an excuse for me to learn Terraform and to solve an infrastructure consistency problem I have been experiencing with an environment I have been developing on.

### Steps for getting started

1. ##### **Download** Terraform from https://www.terraform.io/downloads

   ```bash
   brew tap hashicorp/tap
   brew install hashicorp/tap/terraform
   terraform --version
   	>Terraform v1.2.4 on darwin_amd64
   ```

2. Download **cloud foundry [terraform provider](https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry)** which can be done at https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/wiki like below or do it manually based on the 

   ```bash
   bash -c "$(curl -fsSL https://raw.github.com/cloudfoundry-community/terraform-provider-cloudfoundry/master/bin/install.sh)"
   ```

   ![image-20220705212222253](./terraform-cloudfoundry-provider.png)

3. Initialise cloudfoundry provider

   ```bash
   TODO
   ```

4. Setup an IDE like IntelliJ or *VSCode* with terraform plugins and syntax highlighting 

   ![image-20220705215417337](./vs-code-extension.png)

5. TODO ....

### The docs

In the root of ths repository, there is an [example.tf](./example.tf) file that can demonstrate syntax highlighting and some resources by area

- [Cloudfoundry terraform community](https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/index.md)

  - [Cloudfoundry org resource](https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/org.md)

  - [Cloudfoundry space resource](https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/space.md)

  - [Cloudfoundry app resource](https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/app.md)

  - [Cloudfoundry service resource](https://github.com/cloudfoundry-community/terraform-provider-cloudfoundry/blob/master/docs/resources/service_key.md)

    

