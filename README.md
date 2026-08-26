# HelloID-Conn-SA-Full-Exchange-On-Premises-Usermailbox-Change-Addresslist-Visibility

| :information_source: Information                                                                                                                                                                                                                                                                                                                                                          |
| :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| This repository contains the connector and configuration code only. The implementer is responsible for acquiring the connection details such as username, password, certificate, etc. You might even need to sign a contract or agreement with the supplier before implementing this connector. Please contact the client's application manager to coordinate the connector requirements. |

## Description

_HelloID-Conn-SA-Full-Exchange-On-Premises-Usermailbox-Change-Addresslist-Visibility_ is a template designed for use with HelloID Service Automation (SA) Delegated Forms. It can be imported into HelloID and customized according to your requirements.

By using this delegated form, you can control whether user mailboxes are visible or hidden in the Exchange Global Address List. The following options are available:

1.  Search for mailbox by entering search criteria (name, alias, or email address)
2.  Select the target mailbox from the search results grid
3.  View the current visibility state of the selected mailbox
4.  Toggle the visibility setting to hide or unhide the mailbox from address lists
5.  The mailbox visibility is updated in Exchange On-Premises
6.  Audit logs are created for tracking and compliance purposes

## Getting started

### Requirements

- **Exchange On-Premises Server**: Access to an Exchange On-Premises environment with administrative permissions
- **PowerShell Remoting**: PowerShell remoting must be enabled on the Exchange server
- **Administrative Credentials**: An Exchange administrator account with sufficient permissions to modify mailbox properties
- **Network Access**: The HelloID agent must have network connectivity to the Exchange server on the required ports (typically HTTP/HTTPS)

### Connection settings

The following user-defined variables are used by the connector.

| Setting               | Description                                                                               | Mandatory |
| --------------------- | ----------------------------------------------------------------------------------------- | --------- |
| ExchangeConnectionUri | The connection URI to the Exchange server (e.g., http://exchange.domain.local/PowerShell) | Yes       |
| ExchangeAdminUsername | The username of the Exchange administrator account                                        | Yes       |
| ExchangeAdminPassword | The password of the Exchange administrator account                                        | Yes       |

## Remarks

### Mailbox Identification Using ExchangeGuid

The connector uses `ExchangeGuid` as the primary identifier when updating mailbox properties. This ensures accurate identification even when mailboxes are moved between databases or servers, as the GUID remains constant throughout the mailbox lifecycle.

### Search Functionality

The datasource supports wildcard searching across multiple mailbox attributes including DisplayName, Name, SamAccountName, Alias, and PrimarySmtpAddress. This provides flexible search options for administrators to quickly locate the target mailbox.

### Current State Visibility

The form displays the current visibility state of the selected mailbox through a dedicated datasource, allowing administrators to see the current configuration before making changes. This helps prevent accidental visibility changes.

### Session Management

The connector implements proper PowerShell session management with try-catch-finally blocks to ensure Exchange sessions are properly cleaned up even if errors occur during execution. This prevents session leaks and resource exhaustion on the Exchange server.

## Development resources

### PowerShell cmdlets

The following PowerShell cmdlets are used by the connector:

| Cmdlet      | Description                                 |
| ----------- | ------------------------------------------- |
| Get-Mailbox | Retrieves mailbox information from Exchange |
| Set-Mailbox | Updates mailbox properties in Exchange      |

### API documentation

- [Connect to Exchange Servers using Remote PowerShell](https://learn.microsoft.com/en-us/powershell/exchange/connect-to-exchange-servers-using-remote-powershell)
- [Get-Mailbox](https://learn.microsoft.com/en-us/powershell/module/exchange/get-mailbox)
- [Set-Mailbox](https://learn.microsoft.com/en-us/powershell/module/exchange/set-mailbox)

## Getting help

> :bulb: **Tip:**  
> _For more information on Delegated Forms, please refer to our [documentation](https://docs.helloid.com/en/service-automation/delegated-forms.html) pages_.

## HelloID docs

The official HelloID documentation can be found at: https://docs.helloid.com/
