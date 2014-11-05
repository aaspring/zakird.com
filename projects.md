---
layout: page
title: Projects
---
{% include JB/setup %}

I do my best to publish and actively maintain code that I believe might be useful to others; most of it is available on [GitHub](https://github.com/zakird). Below are a few of the projects I have worked on recently.

#### [ZMap: The Internet Scanner](https://zmap.io)
ZMap is an open-source network scanner specifically architected to perform Internet-wide scans and capable of surveying the entire IPv4 address space in under 45 minutes from user space on a single Linux machine, approaching the theoretical maximum speed of gigabit Ethernet. More information on the scanner can be found at [https://zmap.io](https://zmap.io); the project is hosted on [GitHub](https://github.com/zmap/zmap).

####[scans.io: The Internet-Wide Scan Data Repository](https://scans.io)
The Internet-Wide Scan Data Repository is a public multi-institutional archive of research data collected through active scans of the Internet. The repository was founded as a collaboration between the University of Michigan and and Rapid7 and currently hosts several terabytes of data including our regular scans of the HTTPS ecosystem. More information: [https://scans.io](https://scans.io).

#### [pyad: Python Active Directory Tools](https://zakird.com/pyad)
pyad is a Python library for managing [Microsoft Active Directory](http://www.microsoft.com/en-us/server-cloud/windows-server/active-directory.aspx) via the [pywin32](sourceforge.net/projects/pywin32) provided Windows API. The library is designed to provide a simple, object-oriented interface to Active Directory without requiring in-depth knowledge of ADSI nor how to work with Win32 API in Python. Documentation is available [here](https://zakird.com/pyad). The project code is hosted on [GitHub](https://github.com/zakird/pyad) and can be installed via [pypi](http://pypi.python.org/pypi/pyad). 

#### [Chez Betty](https://github.com/um-cseg/chez-betty)
Chez Betty is an honor-system based food cooperative for graduate students, faculty, and staff in Computer Science at the University of Michigan. The open source project is a Python webapp that tracks deposits, purchases, and inventory -- allowing users to make purchases on a point-of-sale system and administrators to track overall operational state.

#### [factorable.net: The Online Key Check Serivce](https://factorable.net/keycheck.html)
[factorable.net](https://factorable.net/keycheck.html) is an online service that allows end users to test TLS certificates and SSH host keys against our known database of factorable RSA keys, compromised DSA keys, Debian weak keys, and Snake-oil keys as well as report information on where a key or certificate has been seen before. The tool was released as part of the [<i>Widespread Weak Keys in Network Devices</i>](https://factorable.net) project.

#### [AndroJack: Android Session Hijacker](https://github.com/zakird/androjack)
AndroJack is a tool that provides automated testing for session hijacking vulnerabilities. The tool was initially designed to test for vulnerabilities in Android applications, but it can be used to test any HTTP based application. The project is written in Ruby and is hosted on [GitHub](https://github.com/zakird/androjack).
  
#### [mirrortools: The Missing SQL Server Mirroring Toolkit](https://github.com/zakird/mirrortools)
mirrortools is a collection of stored procedures that allow easy manipulation and management of sets of mirrored databases in Microsoft SQL Server 2005+ that were developed while I was at The University of Iowa. More information available and project hosting at [https://github.com/zakird/mirrortools](https://github.com/zakird/mirrortools)
  
#### [pymetapeople: Python MetaPeople Interface](https://groupshare.uiowa.edu/projects/identity)
pymetapeople is a Python module that allows for simple pythonic access to Identity data at The University of Iowa through the MetaPeople SOAP service. Information on the MetaPeople Service and the pymetapeople code base can be found [here](https://groupshare.uiowa.edu/projects/identity) (UI only).

#### [risops: RIS Operations Platform]()
risops is the operations framework that I led the architecture of while at The University of Iowa. The framework serves as middleware between heterogenous systems developed and maintained under the Office of the VP for Research providing transparent data sharing between services as well as central identity and authorization management, assured service (de-)provisioning, and log management.

#### [OpenReport: An Open Source Web Reporting Framework](#)
I am currently in the midst developing OpenReport, an open source and platform independent web reporting framework similar to Microsoft Reporting Services and Crystal Reports written in Python. While I'm not planning to replicate every design feature within SSRS, I am I am hoping to have a framework that allows typical reports to be deployed more quickly to the web and can be easily extended. I hope to have an initial public release by the end of the calendar year.
