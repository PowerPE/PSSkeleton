#requires -version 2
<#
.SYNOPSIS
  Install <Title> Deps
 
.DESCRIPTION
  Installer for <Title> Dependencies
 
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
 
Function Install-<Title>Deps{
  Param()
    Write-Output 'Install of <Title> Dependencies started...'
  Begin{
    
  }
  
  Process{
    Try{
      #Invoke all dep scripts
      Get-ChildItem "${PSScriptRoot}\*.dep.ps1" | %{.$_} 
    }
    
    Catch{
      Write-Error $_.Exception
      Break
    }
  }
  
  End{
    If($?){
      Write-Output 'Install of <Title> Dependencies complete.'
    }
  }
}
 
#>