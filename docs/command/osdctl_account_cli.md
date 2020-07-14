## osdctl account cli

Generate temporary AWS CLI credentials on demand

### Synopsis

Generate temporary AWS CLI credentials on demand

```
osdctl account cli [flags]
```

### Options

```
  -i, --account-id string          The AWS Account ID we need to create temporary AWS credentials for
  -a, --account-name string        The AWS Account CR name to generate the credentials for
      --account-namespace string   The namespace to keep AWS accounts. The default value is aws-account-operator. (default "aws-account-operator")
  -c, --aws-config string          specify AWS config file path
  -p, --aws-profile string         specify AWS profile
  -r, --aws-region string          specify AWS region (default "us-east-1")
  -d, --duration int               The duration of the cli token. Default value is 3600 seconds(1 hour) (default 3600)
  -h, --help                       help for cli
  -v, --verbose                    Verbose output
```

### Options inherited from parent commands

```
      --cluster string             The name of the kubeconfig cluster to use
      --context string             The name of the kubeconfig context to use
      --insecure-skip-tls-verify   If true, the server's certificate will not be checked for validity. This will make your HTTPS connections insecure
      --kubeconfig string          Path to the kubeconfig file to use for CLI requests.
      --request-timeout string     The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
  -s, --server string              The address and port of the Kubernetes API server
```

### SEE ALSO

* [osdctl account](osdctl_account.md)	 - AWS Account related utilities

