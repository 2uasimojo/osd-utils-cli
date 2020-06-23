## osd-utils-cli

OSD CLI

### Synopsis

CLI tool to provide OSD related utilities

```
osd-utils-cli [flags]
```

### Options

```
      --add_dir_header                   If true, adds the file directory to the header
      --alsologtostderr                  log to standard error as well as files
      --cluster string                   The name of the kubeconfig cluster to use
      --context string                   The name of the kubeconfig context to use
  -h, --help                             help for osd-utils-cli
      --insecure-skip-tls-verify         If true, the server's certificate will not be checked for validity. This will make your HTTPS connections insecure
      --kubeconfig string                Path to the kubeconfig file to use for CLI requests.
      --log_backtrace_at traceLocation   when logging hits line file:N, emit a stack trace (default :0)
      --log_dir string                   If non-empty, write log files in this directory
      --log_file string                  If non-empty, use this log file
      --log_file_max_size uint           Defines the maximum size a log file can grow to. Unit is megabytes. If the value is 0, the maximum file size is unlimited. (default 1800)
      --logtostderr                      log to standard error instead of files (default true)
  -n, --namespace string                 If present, the namespace scope for this CLI request
      --request-timeout string           The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
  -s, --server string                    The address and port of the Kubernetes API server
      --skip_headers                     If true, avoid header prefixes in the log messages
      --skip_log_headers                 If true, avoid headers when opening log files
      --stderrthreshold severity         logs at or above this threshold go to stderr (default 2)
  -v, --v Level                          number for the log level verbosity
      --vmodule moduleSpec               comma-separated list of pattern=N settings for file-filtered logging
```

### SEE ALSO

* [osd-utils-cli console](osd-utils-cli_console.md)	 - generate an AWS console URL on the fly
* [osd-utils-cli list](osd-utils-cli_list.md)	 - list resources
* [osd-utils-cli metrics](osd-utils-cli_metrics.md)	 - display metrics of aws-account-operator
* [osd-utils-cli options](osd-utils-cli_options.md)	 - Print the list of flags inherited by all commands
* [osd-utils-cli reset](osd-utils-cli_reset.md)	 - reset AWS account
* [osd-utils-cli set](osd-utils-cli_set.md)	 - set AWS account cr status

