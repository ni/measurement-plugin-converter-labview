# Measurement Plug-In Converter for LabVIEW

- [Measurement Plug-In Converter for LabVIEW](#measurement-plug-in-converter-for-labview)
  - [Introduction](#introduction)
  - [Software support](#software-support)
  - [Installation](#installation)
  - [How to Convert LabVIEW Measurements?](#how-to-convert-labview-measurements)
  - [How to Connect the Wires in Measurement Logic VI?](#how-to-connect-the-wires-in-measurement-logic-vi)
    - [Additional Steps for VISA Instruments](#additional-steps-for-visa-instruments)
  - [Recommended Practices](#recommended-practices)
  - [Limitations](#limitations)
  - [Known Issues](#known-issues)

## Introduction

The Measurement Plug-In Converter is a tool to convert traditional LabVIEW measurements into
measurement plug-ins.

## Software support

- [LabVIEW 2021 SP1](https://www.ni.com/en/support/downloads/software-products/download.labview.html#443865) or later
- [InstrumentStudio Professional 2024 Q3](https://www.ni.com/en/support/downloads/software-products/download.instrumentstudio.html#544066) or later
- [JKI VI Package Manager 2021 SP1](https://www.ni.com/en/support/downloads/tools-network/download.jki-vi-package-manager.html#443251) or later
- [Measurement Plug-In SDK for LabVIEW 3.1.0.1](https://github.com/ni/measurement-plugin-labview/releases/tag/v3.1.0.1) to 3.3.1.2
- [JDP Science Common Utilities 1.4.1.18](https://www.vipm.io/package/jdp_science_lib_common_utilities/) or later
- [JSONtext 1.8.2.122](https://www.vipm.io/package/jdp_science_jsontext/) or later

## Installation

Download and install the `ni_measurement_plugin_converter-X.X.X.X.vip` package from the latest
release assets.

## How to Convert LabVIEW Measurements?

1. Open LabVIEW and navigate to `Tools` → `Plug-In SDKs` → `Measurements` → `Convert
   Measurements...`.  
   ![Launch Tool](./docs/Images/README/Launch%20Tool.png)
2. Select the LabVIEW project in which the measurements are to be converted into measurement
   plugins.  
   1. A new LabVIEW project will be created if the project does not exist.
3. Select measurement VI or the folder containing the measurements and click `Next`.  
   ![Home Page](./docs/Images/README/Home%20Page.png)
4. All the VIs that are present in the specified directory will be listed.
   1. Select the measurements to be converted and click `Next`.  
   ![Measurement Selection Page](./docs/Images/README/Measurement%20Selection%20Page.png)
5. [Optional] Edit the selected plug-in names.
6. Click `Start Conversion`.  
   ![Review Plug-in Name Page](./docs/Images/README/Review%20Plug-in%20Name%20Page.png)
7. Once the conversion is complete, the LabVIEW project with the converted measurements will open
   and the conversion status will be shown on the conversion tool window.  
   ![Conversion Status Page](./docs/Images/README/Conversion%20Status%20Page.png)
8. Click `Review Plug-ins`. All the successfully converted measurements will be listed in the
   dropdown.
   1. Select a plug-in from the dropdown to review the plug-in's Measurement UI, Measurement Logic
      and Type Specialization VIs.  
   ![Review Plug-in Page](./docs/Images/README/Review%20Plug-in%20Page.png)
9. Click `Start Next Conversion` to convert the next set of measurements.

## How to Connect the Wires in Measurement Logic VI?

1. Wire the Pin Names to the corresponding input of the `Get Resource Details.vim`.  
   ![Get Resource Details](./docs/Images/README/Get%20Resource%20Details.png)
2. Connect the channel output of the `Get Resource Details.vim` to the channel name for the
   measurement using the channel-specific instruments.  
   ![Connect Channel Wires](./docs/Images/README/Connect%20Channel%20Wires.png)
3. Connect the corresponding session output of the `Get Resource Details.vim` to the respective
   resource name in the wrapper.  
   ![Connect Session Wires](./docs/Images/README/Connect%20Session%20Wires.png)

### Additional Steps for VISA Instruments

1. In `Measurement Logic.vi`, the instrument type id must be replaced with the instrument name
   specified in the name.  
   ![Measurement Logic VISA](./docs/Images/README/Measurement%20Logic%20VISA.png)
2. In `Type Specialization.vi`, instrument type should be instrument name specified in the pinmap.  
   ![Type Specialization VISA](./docs/Images/README/Type%20Specialization%20VISA.png)

## Recommended Practices

1. Organize all the dependencies in a library for smoother conversion.
2. Place the dependencies in the same directory of the measurement, either in parallel or inside any
   folders.
3. Avoid modifying the project when conversion is in progress.
4. Ensure the libraries in the target project are not locked.
5. Have unique VI and Library names in all the iterations of conversion.

## Limitations

1. Measurement dependencies not part of any library must be placed in the same directory or
   sub-directories of the measurement.
2. Measurement modules must have at least one control and indicator and should not have more than 26
   controls and indicators in total.
3. Controls and Indicators label names must be unique.
4. User must wire the pins and session management VIs in the `Measurement Logic.vi`.
5. The Instrument drivers supported in InstrumentStudio apply to this tool too.
6. Tool wires only up to 7 IO controls to the connector pane of the wrapper. For more than 7 IO
   controls, the user must manually wire the controls to the connector pane.
7. For the unsupported datatypes, user should convert them into primitive datatype in configuration
   and results and implement all the serialization and deserialization logic in measurement UI and
   logic VIs.

## Known Issues

1. Measurements with Resource controls used in clusters, will not be converted properly.
2. Measurements having splitters will result in messy `Measurement UI.vi`
3. Post Conversion, some dependencies might be loaded from source location. To resolve that, add the
   dependencies from the folder found parallel to the measurement library.
4. Post Conversion, LabVIEW project might not be saved. Save the project.
5. Measurements with complex controls like trees, table, list box, sub panel, class object are not
   tested.
6. Initialize and Close APIs inside the case structure won’t be disabled post conversion.
7. Copying the data from TestStand and pasting the data in InstrumentStudio doesn’t update the
   cluster controls.
8. Post Conversion, Typedef constants placed inside the VI might not be linked to its typedef. In
   rare circumstances, few dependencies of the measurement might not be added to the new library
   created. To solve that, add the libraries from dependencies to the library manually.
