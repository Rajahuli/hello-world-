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
    <td><tt>['mysqlserver']['database']['instance_name']</tt></td>
    <td>String</td>
    <td>Database instance_name</td>
    <td><tt>default</tt></td>
  </tr>
  <tr>
    <td><tt>['mysqlserver']['database']['host']</tt></td>
    <td>String</td>
    <td>Database host</td>
    <td><tt>localhost</tt></td>
  </tr>
  <tr>
    <td><tt>['mysqlserver']['database']['port']</tt></td>
    <td>Integer</td>
    <td>Database port number</td>
    <td><tt>3306</tt></td>
  </tr>
  <tr>
    <td><tt>['mysqlserver']['database']['root_password']</tt></td>
    <td>Password</td>
    <td>Database Password</td>
    <td><tt>enterstrongpwd</tt></td>
  </tr>
  <tr>
    <td><tt>['mysqlserver']['database']['mysqlserver_version']</tt></td>
    <td>String</td>
    <td>mysql install version</td>
    <td><tt>5.6</tt></td>
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
