## osdctl metrics

Display metrics of aws-account-operator

### Synopsis

Display metrics of aws-account-operator

```
osdctl metrics [flags]
```

### Options

```
      --account-namespace string   The namespace to keep AWS accounts. The default value is aws-account-operator. (default "aws-account-operator")
  -h, --help                       help for metrics
      --https                      Use HTTPS to access metrics or not. By default we use HTTP scheme.
  -m, --metrics-url string         The URL of aws-account-operator metrics endpoint. Used only for debug purpose! Only HTTP scheme is supported.
  -r, --route string               The route created for aws-account-operator (default "aws-account-operator")
      --sa string                  The service account name for aws-account-operator (default "aws-account-operator")
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

* [osdctl](osdctl.md)	 - OSD CLI

