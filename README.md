# Measurement migration tool for LabVIEW

This repository contains the source code and workflow for migrating any existing LabVIEW measurements into measurement plug-in.

## Table of content

- [Measurement migration tool for LabVIEW](#measurement-migration-tool-for-labview)
  - [Overview](#overview)
    - [Migration tool for LabVIEW](#migration-tool-for-labview)
  - [Software Dependencies](#software-dependencies)
  - [Getting Started](#getting-started)
  - [Create and Update NI Package Manager Feeds](#create-and-update-ni-package-manager-feeds)

## Overview

### Migration tool for LabVIEW

The Measurement plug-in users find it difficult to migrate their existing measurement into InstrumentStudio Pro measurement plug-in. The migration tool helps them migrate any existing LabVIEW measurements into measurement plug-in.

## Software Dependencies

- LabVIEW 2021 SP1 or later
- InstrumentStudio Professional 2024 Q3 or later
- Recommended: TestStand 2021 SP1 or later

## Getting Started

- You can refer to the [Create Measurement Plugin HLD](https://github.com/ni/measurement-migration-tool/blob/main/docs/Migration%20Utility%20HLD/Create%20Measurement%20Plugin%20HLD.md) to understand the workflow for migrating any existing LabVIEW measurements into measurement plug-in.

## Create and Update NI Package Manager Feeds

- Packages for various measurement plugins are incorporated into an NI Package Manager feed,
  allowing users to install new packages or receive updates to existing ones by subscribing to the
  feed.

- The feeds for Measurement plugins are maintained under the attached repo
  [`package-manager-feeds`](https://github.com/NI-MeasurementLink-Plug-Ins/package-manager-feeds).

- Please follow the procedure mentioned in the attached document for adding new packages or updating new
  versions of existing packages to the feed
  [`README.md`](https://github.com/NI-MeasurementLink-Plug-Ins/package-manager-feeds/blob/main/package-feed-updater/README.md).
