# Inforce

> A powershell audit/harderning generation engine

This project allows the generation of Pester Gherkin files to perform Windows system audit.

## Installation

These instruction will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Python3
- Pandas
- Pester 4.x

#### Pandas

``` 
pip3 install pandas 
```

#### Pester

```
Install-Module Pester -Force
Update-Module Pester -Force
```
To check Pester version on the system, use ```Get-Module Pester -ListAvailable```

Pester module comes with Invoke-Gherkin cmdlet

## Usage

To test the script, it is recommended to use `Vagrant` to easily spin-up a VM environment for testing.

#### Configure with config.json

The script will read configurations from `config.json` which define the location of the template files and the output filenames that used for generation.

#### Generate .feature files

`gherkinize.py` will generate `.feature` files that is used by Pester Gherkin to evaluate.

#### Run the powershell script

Execute the powershell script with `./Run.ps1`. Make sure that the `Get-ExecutionPolicy` is set to `Unrestricted`.

The powershell script will generate `.xml` result file in the Result folder that can be used for further processing. 

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Thank you

Inspired by [Miroslav Sommer](https://www.linkedin.com/in/miroslavsommer/), to rebuild my audit powershell generation script that pull and generate with Tenable `.audit` file. To code in time for a client's project, the code was messy. As such, I've decided to re-write the engine, and perhaps change the flow as I realised that pulling `.audit` from Tenable may not be the best option after all.