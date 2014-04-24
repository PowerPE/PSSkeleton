#requires -version 2
<#
.SYNOPSIS
  Install <Title>
 
.DESCRIPTION
  Installer for <Title>
 
.NOTES
  Version:        1.0
  Author:         <Name>
  Creation Date:  <Date>
  
.EXAMPLE
  <Example goes here. Repeat this attribute for more than one example>
#>
 
#---------------------------------------------------------[Initialisations]--------------------------------------------------------
 
#Set Environment variables
 
#Dot Source required Function Libraries
 
#----------------------------------------------------------[Declarations]----------------------------------------------------------
 
#Set Script variables
 
#-----------------------------------------------------------[Functions]------------------------------------------------------------
 
<#
 
Function Install-<Title>{
  Param()
  
  Begin{
    Write-Output 'Install of <Title> started...'
  }
  
  Process{
    Try{
      if (-not (Get-Command -Module 'PsGet')) {
        Echo 'Installing/Updating PsGet...'
        (new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
      }
      if (-not (Get-Command -Module '<Title>')) {
        Echo 'Installing <Title>...'
        Install-Module <Title>
      }
    }
    
    Catch{
      Write-Error $_.Exception
      Break
    }
  }
  
  End{
    If($?){
      Write-Output 'Install of <Title> complete.'
    }
  }
}
 
#>

#-----------------------------------------------------------[Execution]------------------------------------------------------------
 
#Script Execution goes here
#Install-<Title>
#Install-<Title>Deps