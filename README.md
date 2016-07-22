# mysqlserver-cookbook

This is simple cookbook which installs and configures mysql server using original mysql cookbook.

## Dependencies 

depends 'mysql','~> 6.0'
depends "mysql2_chef_gem", "~> 1.0.1"
depends "database", ">= 1.6.0"
depends 'selinux', '~> 0.7'

## Supported Platforms

List of supported platforms.

CentOS 6.5+
Ubuntu 14+
AWS Linux

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mysqlserver']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### mysqlserver::default

Include `mysqlserver` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[mysqlserver::default]"
  ]
}
```

## License and Authors

Author:: Venkatesh Ainalli (<venkiain@gmail.com>)
