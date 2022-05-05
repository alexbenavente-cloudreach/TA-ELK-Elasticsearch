UPDATE1
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ebs_volume.ebsvolume](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume) | resource |
| [aws_instance.elasticsearch_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.elasticsearch_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_volume_attachment.datavol](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/volume_attachment) | resource |
| [aws_ami.aws_ubuntu_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_ami_name"></a> [aws\_ami\_name](#input\_aws\_ami\_name) | Name of the ami for my project | `string` | n/a | yes |
| <a name="input_aws_owner_id"></a> [aws\_owner\_id](#input\_aws\_owner\_id) | Contains the Owner ID of the ami | `string` | n/a | yes |
| <a name="input_ec2_type"></a> [ec2\_type](#input\_ec2\_type) | Type of my ec2 instance | `string` | `"t3.medium"` | no |
| <a name="input_my_keypair"></a> [my\_keypair](#input\_my\_keypair) | n/a | `string` | `"elk_keypair"` | no |
| <a name="input_number_of_instances"></a> [number\_of\_instances](#input\_number\_of\_instances) | Amount of instances for my public subnet | `any` | n/a | yes |
| <a name="input_private_subnet_name"></a> [private\_subnet\_name](#input\_private\_subnet\_name) | n/a | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the vpc for my project | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->