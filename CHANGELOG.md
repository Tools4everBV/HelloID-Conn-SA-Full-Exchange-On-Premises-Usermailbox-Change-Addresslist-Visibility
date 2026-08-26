# Changelog

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/), and this project adheres to [Semantic Versioning](https://semver.org/).

## [2.0.0] - 2026-08-26

### Added

- Added filter-based mailbox search supporting multiple criteria (Name, SamAccountName, Alias, PrimarySmtpAddress)
- Added property selection in datasource to limit memory usage and improve performance
- Added structured parameter splatting throughout all scripts for better readability
- Added detailed `actionMessage` variable to track execution steps for better error context
- Added try-catch-finally pattern with proper session cleanup in finally block
- Added comprehensive inline documentation with Microsoft Docs references

### Changed

- Refactored from single datasource to two specialized datasources
- Changed mailbox identity from `SamAccountName` to `ExchangeGuid` for more reliable identification
- Enhanced error handling with detailed line numbers and execution context
- Improved audit logging with structured messages and consistent formatting

### Fixed

- Fixed session cleanup by ensuring proper disposal in finally block
- Fixed filter logic to handle wildcard search more efficiently

## [1.0.2] - 2022-08-22

### Added

- Added version number and updated code for SA-agent and auditlogging

## [1.0.1] - 2021-11-16

### Added

- Added version number and updated all-in-one script

## [1.0.0] - 2021-04-29

Initial release of HelloID-Conn-SA-Full-Exchange-On-Premises-Usermailbox-Change-Addresslist-Visibility.

### Added

- Initial release for changing Exchange On-Premises user mailbox addresslist visibility
