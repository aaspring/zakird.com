---
layout: post
title: "Managing Active Directory with Python"
description: "A tutorial on managing Microsoft Active Directory with `pyad`, the Python library for Active Directory administration and an introduction to directly manipulating Active Directory through pywin32 and ADSI."
category: "code"
tags: []
---
{% include JB/setup %}

I have recently received a good number of questions regarding the pyad library and I wanted to provide a brief introduction. My intent for this article is to provide a brief tutorial as to how to perform basic operations with pyad, but to also provide detail on how the library operates and the backend for users who want to directly interact with ADSI through Python.

#### Motivation
I wrote pyad, the Python Active Directory Toolkit, in 2008 while at [The University of Iowa](http://www.uiowa.edu) because there were no simple, straight forward tools for managing Active Directory in Python. It was always possible to make ADSI calls through the win32api and I had no intention of recreating any of this implementation, but it quickly becomes clear that the interface required a much deeper knowledge of the win32api, pywin32, ADSI, and Active Directory as a whole than I thought should be necessary for daily operations.

Similarly, the win32 api is designed to be a low level interface and did not cleanly map into the well established object oriented mindset of Python. There was a clear parallel that could be drawn between an Active Directory object and a Python object instance and Python class to Active Directory schema and this has become the key design principle in pyad: an active directory object is always represented by a self-contained python object instantiation.

While I am no longer at The University of Iowa, I continue to maintain the pyad project. The codebase and project details are hosted at [github](https://github.com/zakird/pyad). 

#### Caveats 
Because the library is designed around ADSI and dependent on pywin32, it only runs on the Windows platform. I have no intention at this time of revising the library to make it platform independent as this would require re-architecting the entire library. The library is currently compatible with Python 2.4 - 2.7, but does not support Python 3K. The library is licensed under the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

#### Technical Overview
All Active Directory objects are represented as instantiations of the ADObject class and its various subclasses: ADComputer, ADGroup, ADUser, ADContainer, ADDomain. If you were to introduce a new type of object in your domain, you would write a class that inherits ADObject. No additional data stored in any of these subclasses, just additional helper methods for interfacing with the ADSI library -- because the ADSI layer handles caching and other details. There are also several helper classes that help with this framework, the most frequently accessed externally being ADQuery and ADSearch.

#### Finding and Searching for Objects
There are several manners for finding Active Directory objects through pyad. If a unique identifier such as cn, distinguishedName, or GUID are known, it is possible to directly connect to the object without independently searching for it. For example, any of the following would connect to the given group:

{% highlight python %}
	from pyad import ADGroup
	g = ADGroup.from_dn("cn=all-staff, ou=dept-groups, dc=domain, dc=com")
{% endhighlight %}
	
	from pyad import ADGroup
	g = ADGroup.from_cn("all-staff")
	
	from pyad import ADGroup
	g = ADGroup.from_guid("{3F2504E0-4F89-11D3-9A0C-0305E82C3301}")