# Setting up the provider

1. Create a new directory to work with
   ```
   mkdir ~/src/terraform-workshop
   ```
2. Clone the workshop repo
   ```
   git clone https://github.com/DMajrekar/workshop.git
   ```
3. Create a dir to work through the workshop with
   ```
   cd workshop/terraform
   ```
4. Create a provider file and connect it to your civo account
   ```
   cp ../02-provider/* .
   ```
5. Update your API key: https://dashboard.civo.com/security
   ```
   cp terraform.tfvars.example terraform.tfvars
   vim terraform.tfvars
   ```
6. Run terraform init
   ```
   terraform init
   ```