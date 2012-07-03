---
layout: post
title: "USENIX Security 2012 -- Mining Your Ps and Qs: Detection of Widespread Weak Keys in Network Devices"
description: 'We are excited to be releasing our full scientific study on weak keys, "Mining Your Ps and Qs: Detection of Widespread Weak Keys in Network Devices" which will appear at USENIX Security 2012. In the study we find that at least 5.57% of TLS hosts and 9.60% of SSH hosts use repeated keys in an apparently vulnerable manner and that even more alarmingly, we are able to obtain RSA private keys for 0.50% of TLS hosts and 0.03% of SSH hosts, because their public keys shared nontrivial common factors due to entropy problems, and DSA private keys for 1.03% of SSH hosts, because of insufficient signature randomness.'
category:
tags: ["index_long"]
---
{% include JB/setup %}

We are excited to be releasing our <a href="https://factorable.net">full scientific study</a> on weak keys, "Mining Your Ps and Qs: Detection of Widespread Weak Keys in Network Devices" which will appear at <a href="https://www.usenix.org/conference/usenixsecurity12">USENIX Security 2012</a>. In the study we find that at least 5.57% of TLS hosts and 9.60% of SSH hosts use repeated keys in an apparently vulnerable manner and that even more alarmingly, we are able to obtain RSA private keys for 0.50% of TLS hosts and 0.03% of SSH hosts, because their public keys shared nontrivial common factors due to entropy problems, and DSA private keys for 1.03% of SSH hosts, because of insufficient signature randomness. The research paper is available <a href="https://factorable.net/paper.html">here</a>.

#### Paper Abstract

RSA and DSA can fail catastrophically when used with malfunctioning random number generators, but the extent to which these problems arise in practice has never been comprehensively studied at Internet scale. We perform the largest ever network survey of TLS and SSH servers and present evidence that vulnerable keys are surprisingly widespread. We find that 0.75% of TLS certificates share keys due to insufficient entropy during key generation, and we suspect that another 1.70% come from the same faulty implementations and may be susceptible to com- promise. Even more alarmingly, we are able to obtain RSA private keys for 0.50% of TLS hosts and 0.03% of SSH hosts, because their public keys shared nontrivial common factors due to entropy problems, and DSA private keys for 1.03% of SSH hosts, because of insufficient signature randomness. We cluster and investigate the vulnerable hosts, finding that the vast majority appear to be headless or embedded devices. In experiments with three software components commonly used by these devices, we are able to reproduce the vulnerabilities and identify specific software behaviors that induce them, including a boot-time entropy hole in the Linux random number generator. Finally, we suggest defenses and draw lessons for developers, users, and the security community.