![nventive](https://nventive-public-assets.s3.amazonaws.com/nventive-logo-blanc-300w.png)

# terraform-aws-acm-certificate-import

Terraform module to import an existing certificate into ACM.

---

## Examples

```hcl
module "cert" {
  source = "git@ssh.dev.azure.com:v3/nventive/Terraform-Modules/aws-acm-certificate-import"
  # We recommend pinning every module to a specific version
  # Append ?ref=vX.X.X the source value

  namespace = "eg"
  stage     = "test"
  name      = "app"

  private_key_base64       = filebase64("${path.module}/key.pem")
  certificate_body_base64  = filebase64("${path.module}/cert.pem")
  certificate_chain_base64 = filebase64("${path.module}/chain.pem")
}
```
