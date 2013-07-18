---
layout: page
title: Projects
---
{% include JB/setup %}

I do my best to publish and actively maintain code that I believe might be useful to others; most of it is available on [github](https://github.com/zakird). Below are a few of the projects on which I have recently worked.

#### [ZMap: The Internet Scanner]()
ZMap is an open-source network scanner specifically architected to perform Internet-wide scans and capable of surveying the entire IPv4 address space in under 45 minutes from user space on a single Linux machine, approaching the theoretical maximum speed of gigabit Ethernet. We will be releasing the scanner in August 2013 at the 22nd USENIX Security Symposium.

#### [pyad: Python Active Directory Tools](https://zakird.com/pyad)
pyad is a comprehensive Python library for managing [Microsoft Active Directory](http://www.microsoft.com/en-us/server-cloud/windows-server/active-directory.aspx) via the [pywin32](sourceforge.net/projects/pywin32) provided Windows API. The library is designed to provide a simple, object-oriented interface to Active Directory without requiring in-depth knowledge of ADSI nor how to work with Win32 API in Python. Documentation is available [here](https://zakird.com/pyad). Code is hosted on [github](https://github.com/zakird/pyad) and can be installed via [pypi](http://pypi.python.org/pypi/pyad). 

#### [factorable.net: The Online Key Check Serivce](https://factorable.net/keycheck.html)
[factorable.net](https://factorable.net/keycheck.html) is an online service that allows end users and administrators to test TLS certificates and SSH host keys against our known database of factorable RSA keys, compromised DSA keys, Debian weak keys, and Snake-oil keys as well as report information on where a key or certificate has been seen before. The tool was released as part of the [<i>Widespread Weak Keys in Network Devices</i>](https://factorable.net) project.

#### [androjack: Android Session Hijacker](https://github.com/zakird/androjack)
Androjack is a tool designed to allow automated testing for session hijacking vulnerabilities. The tool was initially designed to test for vulnerabilities in Android applications for a project at The University of Michigan. However it can be used to test any HTTP based application or website. It works by capturing all plain-text HTTP requests, replaying them using Mechanize, and then analyzing page content. The project is written in Ruby and is hosted on [github](https://github.com/zakird/androjack).
  
#### [mirrortools: The Missing SQL Server Mirroring Toolkit](https://github.com/zakird/mirrortools)
mirrortools is a collection of stored procedures that allow easy manipulation and management of sets of mirrored databases in Microsoft SQL Server 2005+ that were developed while I was at The University of Iowa. More information available and project hosting at [https://github.com/zakird/mirrortools](https://github.com/zakird/mirrortools)
  
#### [pymetapeople: Python MetaPeople Interface](https://groupshare.uiowa.edu/projects/identity)
pymetapeople is a Python module that allows for simple pythonic access to Identity data at The University of Iowa through the MetaPeople SOAP service. Information on the MetaPeople Service and the pymetapeople code base can be found [here](https://groupshare.uiowa.edu/projects/identity) (UI only).

#### [risops: RIS Operations Platform]()
risops is the operations framework that I led the architecture of while at The University of Iowa. The framework serves as middleware between heterogenous systems developed and maintained under the Office of the VP for Research providing transparent data sharing between services as well as central identity and authorization management, assured service (de-)provisioning, and log management.

#### [OpenReport: An Open Source Web Reporting Framework](#)
I am currently in the midst developing OpenReport, an open source and platform independent web reporting framework similar to Microsoft Reporting Services and Crystal Reports written in Python. While I'm not planning to replicate every design feature within SSRS, I am I am hoping to have a framework that allows typical reports to be deployed more quickly to the web and can be easily extended. I hope to have an initial public release by the end of the calendar year.
