![](boundary.png)
# Boundary AWS Reference Architecture
This repo contains Terraform AWS configuration for deploying Boundary.

Disclaimer: the examples in this repository are for demonstration purposes only to convey how to get Boundary up and running
on popular cloud and container platforms. They're not officially supported modules or designed to be "production" ready. They're
here as a starting point and assume end-users have experience with each example platform.

## Reference
![](arch.png)

## Contents
- `deployment/`: Contains example Terraform configurations for deploying and configuring Boundary on AWS for demonstration purposes.


boundary auth-methods create oidc \
  -issuer "https://ISSUER_URL" \
  -client-id CLIENT_ID \
  -client-secret CLIENT_SECRET \
  -signing-algorithm RS256 \
  -api-url-prefix "http://localhost:9200" \
  -name "auth0"


 CLIENT_ID 9935a423-aeb0-4767-8993-97fafd41b593
 CLIENT_SECRET _S-X38.iW__JB36Msu.TPZwAW0Qrne-220
 https://boundary.pecedu.in
 https://sts.windows.net/4acd36da-e183-4bb9-979c-add9146cef0a


 boundary auth-methods create oidc \
  -issuer "https://sts.windows.net/4acd36da-e183-4bb9-979c-add9146cef0a/" \
  -client-id 9935a423-aeb0-4767-8993-97fafd41b593 \
  -client-secret _S-X38.iW__JB36Msu.TPZwAW0Qrne-220 \
  -signing-algorithm RS256 \
  -api-url-prefix "https://boundary.pecedu.in" \
  -name "azure"


  boundary authenticate password \
  -login-name=jim \
  -password foofoofoo \
  -auth-method-id=ampw_NtLi18WYcb


boundary auth-methods update oidc -id amoidc_n41RgxK24D -issuer "https://sts.windows.net/4acd36da-e183-4bb9-979c-add9146cef0a/" -max-age 0

boundary authenticate oidc -auth-method-id amoidc_n41RgxK24D

