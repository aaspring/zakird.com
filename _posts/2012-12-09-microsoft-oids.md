---
layout: post
title: "Microsoft Object Identifiers"
description: "A parsed version of the published Microsoft cryptographic Object IDs and code to import into OpenSSL."
category: 
tags: ["index_short"]
---
{% include JB/setup %}

By default, OpenSSL does not contain the Object IDs (OIDs) that Microsoft uses to represent X.509 extensions on their certificates. For those unfamiliar with OIDs, they are numeric values that are utilized to present cryptographic components such as X.509 extensions, PKCS #7 extensions, and PKCS #7 values. Microsoft does however publish a human readable list of their OIDs at <https://support.microsoft.com/kb/287547>.

Below is a parsed version of these identifiers from December 2012 and the basic code to import these into OpenSSL.

{% highlight c %}

    #ifndef HEADER_OIDS_H
    #define HEADER_OIDS_H
    
    typedef struct c_oid {
        const char *oid;
        const char *srcname;
        const char *sn;
        const char *ln;
        const char *desc;
    } c_oid_t;
    
    const c_oid_t custom_oids[] = {
        /************************ BEGIN MICROSOFT ************************/
        {
            .oid = "1.3.6.1.4.1.311.17.1",
            .srcname = "szOID_LOCAL_MACHINE_KEYSET",
            .sn = "MS_LOCAL_MACHINE_KEYSET",
            .ln = "MS_LOCAL_MACHINE_KEYSET",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.4.1",
            .srcname = "szOID_YESNO_TRUST_ATTR",
            .sn = "MS_YESNO_TRUST_ATTR",
            .ln = "MS_YESNO_TRUST_ATTR",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.13.2.1",
            .srcname = "szOID_ENROLLMENT_NAME_VALUE_PAIR",
            .sn = "MS_ENROLLMENT_NAME_VALUE_PAIR",
            .ln = "MS_ENROLLMENT_NAME_VALUE_PAIR",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.13.2.3",
            .srcname = "szOID_OS_VERSION",
            .sn = "MS_OS_VERSION",
            .ln = "MS_OS_VERSION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.13.2.2",
            .srcname = "szOID_ENROLLMENT_CSP_PROVIDER",
            .sn = "MS_ENROLLMENT_CSP_PROVIDER",
            .ln = "MS_ENROLLMENT_CSP_PROVIDER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.12.1.2",
            .srcname = "szOID_CATALOG_LIST_MEMBER",
            .sn = "MS_CATALOG_LIST_MEMBER",
            .ln = "MS_CATALOG_LIST_MEMBER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.11.",
            .srcname = "szOID_CERT_PROP_ID_PREFIX",
            .sn = "MS_CERT_PROP_ID_PREFIX",
            .ln = "MS_CERT_PROP_ID_PREFIX",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.13.1",
            .srcname = "szOID_RENEWAL_CERTIFICATE",
            .sn = "MS_RENEWAL_CERTIFICATE",
            .ln = "MS_RENEWAL_CERTIFICATE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311",
            .srcname = "Microsoft_OID",
            .sn = "MS_OID",
            .ln = "MS_OID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.30",
            .srcname = "SPC_SIPINFO_OBJID",
            .sn = "MS_SPC_SIPINFO_OBJID",
            .ln = "MS_SPC_SIPINFO_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.88.3",
            .srcname = "szOID_CAPICOM_ENCRYPTED_DATA",
            .sn = "MS_CAPICOM_ENCRYPTED_DATA",
            .ln = "MS_CAPICOM_ENCRYPTED_DATA",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.88.2",
            .srcname = "szOID_CAPICOM_ATTRIBUTE",
            .sn = "MS_CAPICOM_ATTRIBUTE",
            .ln = "MS_CAPICOM_ATTRIBUTE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.88.1",
            .srcname = "szOID_CAPICOM_VERSION",
            .sn = "MS_CAPICOM_VERSION",
            .ln = "MS_CAPICOM_VERSION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.6.2",
            .srcname = "szOID_LICENSE_SERVER",
            .sn = "MS_LICENSE_SERVER",
            .ln = "MS_LICENSE_SERVER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.10.1",
            .srcname = "szOID_CMC_ADD_ATTRIBUTES",
            .sn = "MS_CMC_ADD_ATTRIBUTES",
            .ln = "MS_CMC_ADD_ATTRIBUTES",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.3.2.1",
            .srcname = "SPC_TIME_STAMP_REQUEST_OBJID",
            .sn = "MS_SPC_TIME_STAMP_REQUEST_OBJID",
            .ln = "MS_SPC_TIME_STAMP_REQUEST_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.12.1",
            .srcname = "szOID_ANY_APPLICATION_POLICY",
            .sn = "MS_ANY_APPLICATION_POLICY",
            .ln = "MS_ANY_APPLICATION_POLICY",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.0.4",
            .srcname = "szOID_PEERNET_CERT_VERSION",
            .sn = "MS_PEERNET_CERT_VERSION",
            .ln = "MS_PEERNET_CERT_VERSION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.19",
            .srcname = "szOID_DS_EMAIL_REPLICATION",
            .sn = "MS_DS_EMAIL_REPLICATION",
            .ln = "MS_DS_EMAIL_REPLICATION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.16",
            .srcname = "szOID_ARCHIVED_KEY_CERT_HASH",
            .sn = "MS_ARCHIVED_KEY_CERT_HASH",
            .ln = "MS_ARCHIVED_KEY_CERT_HASH",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.17",
            .srcname = "szOID_ISSUED_CERT_HASH",
            .sn = "MS_ISSUED_CERT_HASH",
            .ln = "MS_ISSUED_CERT_HASH",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.14",
            .srcname = "szOID_CRL_SELF_CDP",
            .sn = "MS_CRL_SELF_CDP",
            .ln = "MS_CRL_SELF_CDP",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.15",
            .srcname = "szOID_REQUIRE_CERT_CHAIN_POLICY",
            .sn = "MS_REQUIRE_CERT_CHAIN_POLICY",
            .ln = "MS_REQUIRE_CERT_CHAIN_POLICY",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.12",
            .srcname = "szOID_APPLICATION_POLICY_CONSTRAINTS",
            .sn = "MS_APPLICATION_POLICY_CONSTRAINTS",
            .ln = "MS_APPLICATION_POLICY_CONSTRAINTS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.13",
            .srcname = "szOID_ARCHIVED_KEY_ATTR",
            .sn = "MS_ARCHIVED_KEY_ATTR",
            .ln = "MS_ARCHIVED_KEY_ATTR",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.10",
            .srcname = "szOID_APPLICATION_CERT_POLICIES",
            .sn = "MS_APPLICATION_CERT_POLICIES",
            .ln = "MS_APPLICATION_CERT_POLICIES",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.11",
            .srcname = "szOID_APPLICATION_POLICY_MAPPINGS",
            .sn = "MS_APPLICATION_POLICY_MAPPINGS",
            .ln = "MS_APPLICATION_POLICY_MAPPINGS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44",
            .srcname = "Microsoft_Peer_Networking",
            .sn = "MS_Peer_Networking",
            .ln = "MS_Peer_Networking",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.12.2.1",
            .srcname = "CAT_NAMEVALUE_OBJID",
            .sn = "MS_CAT_NAMEVALUE_OBJID",
            .ln = "MS_CAT_NAMEVALUE_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.5.1",
            .srcname = "szOID_DRM",
            .sn = "MS_DRM",
            .ln = "MS_DRM",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.43",
            .srcname = "Microsoft_WWOps_BizExt",
            .sn = "MS_WWOps_BizExt",
            .ln = "MS_WWOps_BizExt",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.5.2",
            .srcname = "szOID_DRM_INDIVIDUALIZATION",
            .sn = "MS_DRM_INDIVIDUALIZATION",
            .ln = "MS_DRM_INDIVIDUALIZATION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.13",
            .srcname = "szOID_KP_LIFETIME_SIGNING",
            .sn = "MS_KP_LIFETIME_SIGNING",
            .ln = "MS_KP_LIFETIME_SIGNING",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.12",
            .srcname = "szOID_KP_DOCUMENT_SIGNING",
            .sn = "MS_KP_DOCUMENT_SIGNING",
            .ln = "MS_KP_DOCUMENT_SIGNING",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.11",
            .srcname = "szOID_KP_KEY_RECOVERY",
            .sn = "MS_KP_KEY_RECOVERY",
            .ln = "MS_KP_KEY_RECOVERY",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.10",
            .srcname = "szOID_KP_QUALIFIED_SUBORDINATION",
            .sn = "MS_KP_QUALIFIED_SUBORDINATION",
            .ln = "MS_KP_QUALIFIED_SUBORDINATION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.1",
            .srcname = "szOID_PKIX_LICENSE_INFO",
            .sn = "MS_PKIX_LICENSE_INFO",
            .ln = "MS_PKIX_LICENSE_INFO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.2",
            .srcname = "szOID_PKIX_MANUFACTURER",
            .sn = "MS_PKIX_MANUFACTURER",
            .ln = "MS_PKIX_MANUFACTURER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.3",
            .srcname = "szOID_PKIX_MANUFACTURER_MS_SPECIFIC",
            .sn = "MS_PKIX_MANUFACTURER_MS_SPECIFIC",
            .ln = "MS_PKIX_MANUFACTURER_MS_SPECIFIC",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.4",
            .srcname = "szOID_PKIX_HYDRA_CERT_VERSION",
            .sn = "MS_PKIX_HYDRA_CERT_VERSION",
            .ln = "MS_PKIX_HYDRA_CERT_VERSION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.5",
            .srcname = "szOID_PKIX_LICENSED_PRODUCT_INFO",
            .sn = "MS_PKIX_LICENSED_PRODUCT_INFO",
            .ln = "MS_PKIX_LICENSED_PRODUCT_INFO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.6",
            .srcname = "szOID_PKIX_MS_LICENSE_SERVER_INFO",
            .sn = "MS_PKIX_MS_LICENSE_SERVER_INFO",
            .ln = "MS_PKIX_MS_LICENSE_SERVER_INFO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.7",
            .srcname = "szOID_PKIS_PRODUCT_SPECIFIC_OID",
            .sn = "MS_PKIS_PRODUCT_SPECIFIC_OID",
            .ln = "MS_PKIS_PRODUCT_SPECIFIC_OID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.22",
            .srcname = "szOID_CERTSRV_CROSSCA_VERSION",
            .sn = "MS_CERTSRV_CROSSCA_VERSION",
            .ln = "MS_CERTSRV_CROSSCA_VERSION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.21",
            .srcname = "szOID_ENCRYPTED_KEY_HASH",
            .sn = "MS_ENCRYPTED_KEY_HASH",
            .ln = "MS_ENCRYPTED_KEY_HASH",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.20",
            .srcname = "szOID_REQUEST_CLIENT_INFO",
            .sn = "MS_REQUEST_CLIENT_INFO",
            .ln = "MS_REQUEST_CLIENT_INFO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.20.3",
            .srcname = "szOID_CERT_MANIFOLD",
            .sn = "MS_CERT_MANIFOLD",
            .ln = "MS_CERT_MANIFOLD",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.1.1",
            .srcname = "szOID_SORTED_CTL",
            .sn = "MS_SORTED_CTL",
            .ln = "MS_SORTED_CTL",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.1.3",
            .srcname = "szOID_PEERNET_PNRP_PAYLOAD",
            .sn = "MS_PEERNET_PNRP_PAYLOAD",
            .ln = "MS_PEERNET_PNRP_PAYLOAD",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.7.1",
            .srcname = "szOID_KEYID_RDN",
            .sn = "MS_KEYID_RDN",
            .ln = "MS_KEYID_RDN",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.1.1",
            .srcname = "szOID_PEERNET_PNRP_ADDRESS",
            .sn = "MS_PEERNET_PNRP_ADDRESS",
            .ln = "MS_PEERNET_PNRP_ADDRESS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.8",
            .srcname = "szOID_ENTERPRISE_OID_ROOT",
            .sn = "MS_ENTERPRISE_OID_ROOT",
            .ln = "MS_ENTERPRISE_OID_ROOT",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.1.4",
            .srcname = "szOID_PEERNET_PNRP_ID",
            .sn = "MS_PEERNET_PNRP_ID",
            .ln = "MS_PEERNET_PNRP_ID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.3.1",
            .srcname = "szOID_PEERNET_GROUPING_PEERNAME",
            .sn = "MS_PEERNET_GROUPING_PEERNAME",
            .ln = "MS_PEERNET_GROUPING_PEERNAME",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.12",
            .srcname = "CryptUI",
            .sn = "MS_CryptUI",
            .ln = "MS_CryptUI",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.10",
            .srcname = "Microsoft_CMC_OIDs",
            .sn = "MS_CMC_OIDs",
            .ln = "MS_CMC_OIDs",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.11",
            .srcname = "Microsoft_certificate_property_OIDs",
            .sn = "MS_certificate_property_OIDs",
            .ln = "MS_certificate_property_OIDs",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.4",
            .srcname = "SPC_INDIRECT_DATA_OBJID",
            .sn = "MS_SPC_INDIRECT_DATA_OBJID",
            .ln = "MS_SPC_INDIRECT_DATA_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.2",
            .srcname = "CTL_for_Software_Publishers_Trusted_CAs",
            .sn = "MS_CTL_for_Software_Publishers_Trusted_CAs",
            .ln = "MS_CTL_for_Software_Publishers_Trusted_CAs",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.3.5",
            .srcname = "szOID_PEERNET_GROUPING_CLASSIFIERS",
            .sn = "MS_PEERNET_GROUPING_CLASSIFIERS",
            .ln = "MS_PEERNET_GROUPING_CLASSIFIERS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2",
            .srcname = "Authenticode",
            .sn = "MS_Authenticode",
            .ln = "MS_Authenticode",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.3",
            .srcname = "Time_Stamping",
            .sn = "MS_Time_Stamping",
            .ln = "MS_Time_Stamping",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.7",
            .srcname = "szOID_CERTIFICATE_TEMPLATE",
            .sn = "MS_CERTIFICATE_TEMPLATE",
            .ln = "MS_CERTIFICATE_TEMPLATE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.4",
            .srcname = "Permissions",
            .sn = "MS_Permissions",
            .ln = "MS_Permissions",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.30",
            .srcname = "IIS",
            .sn = "MS_IIS",
            .ln = "MS_IIS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.19",
            .srcname = "Microsoft_ISPU_Test",
            .sn = "MS_ISPU_Test",
            .ln = "MS_ISPU_Test",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.7",
            .srcname = "szOID_OEM_WHQL_CRYPTO",
            .sn = "MS_OEM_WHQL_CRYPTO",
            .ln = "MS_OEM_WHQL_CRYPTO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.6",
            .srcname = "szOID_NT5_CRYPTO",
            .sn = "MS_NT5_CRYPTO",
            .ln = "MS_NT5_CRYPTO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.5",
            .srcname = "szOID_WHQL_CRYPTO",
            .sn = "MS_WHQL_CRYPTO",
            .ln = "MS_WHQL_CRYPTO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.4",
            .srcname = "szOID_EFS_CRYPTO",
            .sn = "MS_EFS_CRYPTO",
            .ln = "MS_EFS_CRYPTO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.20.2.3",
            .srcname = "szOID_NT_PRINCIPAL_NAME",
            .sn = "MS_NT_PRINCIPAL_NAME",
            .ln = "MS_NT_PRINCIPAL_NAME",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.20.2.2",
            .srcname = "szOID_KP_SMARTCARD_LOGON",
            .sn = "MS_KP_SMARTCARD_LOGON",
            .ln = "MS_KP_SMARTCARD_LOGON",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.20.2.1",
            .srcname = "szOID_ENROLLMENT_AGENT",
            .sn = "MS_ENROLLMENT_AGENT",
            .ln = "MS_ENROLLMENT_AGENT",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.9",
            .srcname = "szOID_ROOT_LIST_SIGNER",
            .sn = "MS_ROOT_LIST_SIGNER",
            .ln = "MS_ROOT_LIST_SIGNER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.8",
            .srcname = "szOID_EMBEDDED_NT_CRYPTO",
            .sn = "MS_EMBEDDED_NT_CRYPTO",
            .ln = "MS_EMBEDDED_NT_CRYPTO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18.8",
            .srcname = "szOID_PKIS_TLSERVER_SPK_OID",
            .sn = "MS_PKIS_TLSERVER_SPK_OID",
            .ln = "MS_PKIS_TLSERVER_SPK_OID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.2.2",
            .srcname = "szOID_TRUSTED_CLIENT_AUTH_CA_LIST",
            .sn = "MS_TRUSTED_CLIENT_AUTH_CA_LIST",
            .ln = "MS_TRUSTED_CLIENT_AUTH_CA_LIST",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.2.3",
            .srcname = "szOID_TRUSTED_SERVER_AUTH_CA_LIST",
            .sn = "MS_TRUSTED_SERVER_AUTH_CA_LIST",
            .ln = "MS_TRUSTED_SERVER_AUTH_CA_LIST",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.12.1.1",
            .srcname = "szOID_CATALOG_LIST",
            .sn = "MS_CATALOG_LIST",
            .ln = "MS_CATALOG_LIST",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.2.1",
            .srcname = "szOID_TRUSTED_CODESIGNING_CA_LIST",
            .sn = "MS_TRUSTED_CODESIGNING_CA_LIST",
            .ln = "MS_TRUSTED_CODESIGNING_CA_LIST",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.45",
            .srcname = "Mobile_Devices_Code_Signing",
            .sn = "MS_Mobile_Devices_Code_Signing",
            .ln = "MS_Mobile_Devices_Code_Signing",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.30.1",
            .srcname = "szOID_IIS_VIRTUAL_SERVER",
            .sn = "MS_IIS_VIRTUAL_SERVER",
            .ln = "MS_IIS_VIRTUAL_SERVER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.14",
            .srcname = "szOID_KP_MOBILE_DEVICE_SOFTWARE",
            .sn = "MS_KP_MOBILE_DEVICE_SOFTWARE",
            .ln = "MS_KP_MOBILE_DEVICE_SOFTWARE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.8.1",
            .srcname = "szOID_REMOVE_CERTIFICATE",
            .sn = "MS_REMOVE_CERTIFICATE",
            .ln = "MS_REMOVE_CERTIFICATE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.42",
            .srcname = "Microsoft_Corporate_PKI_(ITG)",
            .sn = "MS_Corporate_PKI_(ITG)",
            .ln = "MS_Corporate_PKI_(ITG)",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.26",
            .srcname = "SPC_MINIMAL_CRITERIA_OBJID",
            .sn = "MS_SPC_MINIMAL_CRITERIA_OBJID",
            .ln = "MS_SPC_MINIMAL_CRITERIA_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.3.2",
            .srcname = "szOID_PEERNET_GROUPING_FLAGS",
            .sn = "MS_PEERNET_GROUPING_FLAGS",
            .ln = "MS_PEERNET_GROUPING_FLAGS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.3.3",
            .srcname = "szOID_PEERNET_GROUPING_ROLES",
            .sn = "MS_PEERNET_GROUPING_ROLES",
            .ln = "MS_PEERNET_GROUPING_ROLES",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.41",
            .srcname = "Microsoft_Licensing_and_Registration",
            .sn = "MS_Licensing_and_Registration",
            .ln = "MS_Licensing_and_Registration",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.20",
            .srcname = "Microsoft_Enrollment_Infrastructure",
            .sn = "MS_Enrollment_Infrastructure",
            .ln = "MS_Enrollment_Infrastructure",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.40",
            .srcname = "Fonts",
            .sn = "MS_Fonts",
            .ln = "MS_Fonts",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21",
            .srcname = "Microsoft_CertSrv_Infrastructure",
            .sn = "MS_CertSrv_Infrastructure",
            .ln = "MS_CertSrv_Infrastructure",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.3.1",
            .srcname = "szOID_SERIALIZED",
            .sn = "MS_SERIALIZED",
            .ln = "MS_SERIALIZED",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.12.2.2",
            .srcname = "CAT_MEMBERINFO_OBJID",
            .sn = "MS_CAT_MEMBERINFO_OBJID",
            .ln = "MS_CAT_MEMBERINFO_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.25",
            .srcname = "Microsoft_Directory_Service",
            .sn = "MS_Directory_Service",
            .ln = "MS_Directory_Service",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.0.3",
            .srcname = "szOID_PEERNET_CLASSIFIER",
            .sn = "MS_PEERNET_CLASSIFIER",
            .ln = "MS_PEERNET_CLASSIFIER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.0.1",
            .srcname = "szOID_PEERNET_CERT_TYPE",
            .sn = "MS_PEERNET_CERT_TYPE",
            .ln = "MS_PEERNET_CERT_TYPE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.1",
            .srcname = "szOID_PEERNET_PNRP",
            .sn = "MS_PEERNET_PNRP",
            .ln = "MS_PEERNET_PNRP",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.88.3.1",
            .srcname = "szOID_CAPICOM_ENCRYPTED_CONTENT",
            .sn = "MS_CAPICOM_ENCRYPTED_CONTENT",
            .ln = "MS_CAPICOM_ENCRYPTED_CONTENT",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.0.2",
            .srcname = "szOID_PEERNET_PEERNAME",
            .sn = "MS_PEERNET_PEERNAME",
            .ln = "MS_PEERNET_PEERNAME",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.3",
            .srcname = "szOID_PEERNET_GROUPING",
            .sn = "MS_PEERNET_GROUPING",
            .ln = "MS_PEERNET_GROUPING",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.1.2",
            .srcname = "szOID_PEERNET_PNRP_FLAGS",
            .sn = "MS_PEERNET_PNRP_FLAGS",
            .ln = "MS_PEERNET_PNRP_FLAGS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.15",
            .srcname = "Microsoft_Java",
            .sn = "MS_Java",
            .ln = "MS_Java",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.16",
            .srcname = "Microsoft_Outlook/Exchange",
            .sn = "MS_Outlook/Exchange",
            .ln = "MS_Outlook/Exchange",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.17",
            .srcname = "Microsoft_PKCS12_attributes",
            .sn = "MS_PKCS12_attributes",
            .ln = "MS_PKCS12_attributes",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10",
            .srcname = "Crypto_2.0",
            .sn = "MS_Crypto_2.0",
            .ln = "MS_Crypto_2.0",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.9",
            .srcname = "szOID_RDN_DUMMY_SIGNER",
            .sn = "MS_RDN_DUMMY_SIGNER",
            .ln = "MS_RDN_DUMMY_SIGNER",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.12",
            .srcname = "Catalog",
            .sn = "MS_Catalog",
            .ln = "MS_Catalog",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.13",
            .srcname = "Microsoft_PKCS10_OIDs",
            .sn = "MS_PKCS10_OIDs",
            .ln = "MS_PKCS10_OIDs",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.4",
            .srcname = "szOID_CRL_NEXT_PUBLISH",
            .sn = "MS_CRL_NEXT_PUBLISH",
            .ln = "MS_CRL_NEXT_PUBLISH",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.5",
            .srcname = "szOID_KP_CA_EXCHANGE",
            .sn = "MS_KP_CA_EXCHANGE",
            .ln = "MS_KP_CA_EXCHANGE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.6",
            .srcname = "szOID_KP_KEY_RECOVERY_AGENT",
            .sn = "MS_KP_KEY_RECOVERY_AGENT",
            .ln = "MS_KP_KEY_RECOVERY_AGENT",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.6.1",
            .srcname = "szOID_LICENSES",
            .sn = "MS_LICENSES",
            .ln = "MS_LICENSES",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.18",
            .srcname = "Microsoft_Hydra",
            .sn = "MS_Hydra",
            .ln = "MS_Hydra",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.1",
            .srcname = "szOID_CERTSRV_CA_VERSION",
            .sn = "MS_CERTSRV_CA_VERSION",
            .ln = "MS_CERTSRV_CA_VERSION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.2",
            .srcname = "szOID_CERTSRV_PREVIOUS_CERT_HASH",
            .sn = "MS_CERTSRV_PREVIOUS_CERT_HASH",
            .ln = "MS_CERTSRV_PREVIOUS_CERT_HASH",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.21.3",
            .srcname = "szOID_CRL_VIRTUAL_BASE",
            .sn = "MS_CRL_VIRTUAL_BASE",
            .ln = "MS_CRL_VIRTUAL_BASE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.31.1",
            .srcname = "szOID_PRODUCT_UPDATE",
            .sn = "MS_PRODUCT_UPDATE",
            .ln = "MS_PRODUCT_UPDATE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.16.4",
            .srcname = "szOID_MICROSOFT_Encryption_Key_Preference",
            .sn = "MS_MICROSOFT_Encryption_Key_Preference",
            .ln = "MS_MICROSOFT_Encryption_Key_Preference",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.2",
            .srcname = "szOID_PEERNET_IDENTITY",
            .sn = "MS_PEERNET_IDENTITY",
            .ln = "MS_PEERNET_IDENTITY",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.88",
            .srcname = "szOID_CAPICOM",
            .sn = "MS_CAPICOM",
            .ln = "MS_CAPICOM",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.9.1",
            .srcname = "szOID_CROSS_CERT_DIST_POINTS",
            .sn = "MS_CROSS_CERT_DIST_POINTS",
            .ln = "MS_CROSS_CERT_DIST_POINTS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.19",
            .srcname = "SPC_STRUCTURED_STORAGE_DATA_OBJID",
            .sn = "MS_SPC_STRUCTURED_STORAGE_DATA_OBJID",
            .ln = "MS_SPC_STRUCTURED_STORAGE_DATA_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.18",
            .srcname = "SPC_RAW_FILE_DATA_OBJID",
            .sn = "MS_SPC_RAW_FILE_DATA_OBJID",
            .ln = "MS_SPC_RAW_FILE_DATA_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.25",
            .srcname = "SPC_GLUE_RDN_OBJID",
            .sn = "MS_SPC_GLUE_RDN_OBJID",
            .ln = "MS_SPC_GLUE_RDN_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.11",
            .srcname = "SPC_STATEMENT_TYPE_OBJID",
            .sn = "MS_SPC_STATEMENT_TYPE_OBJID",
            .ln = "MS_SPC_STATEMENT_TYPE_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.10",
            .srcname = "SPC_SP_AGENCY_INFO_OBJID",
            .sn = "MS_SPC_SP_AGENCY_INFO_OBJID",
            .ln = "MS_SPC_SP_AGENCY_INFO_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.4.1",
            .srcname = "szOID_EFS_RECOVERY",
            .sn = "MS_EFS_RECOVERY",
            .ln = "MS_EFS_RECOVERY",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.12",
            .srcname = "SPC_SP_OPUS_INFO_OBJID",
            .sn = "MS_SPC_SP_OPUS_INFO_OBJID",
            .ln = "MS_SPC_SP_OPUS_INFO_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.15",
            .srcname = "SPC_PE_IMAGE_DATA_OBJID",
            .sn = "MS_SPC_PE_IMAGE_DATA_OBJID",
            .ln = "MS_SPC_PE_IMAGE_DATA_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.14",
            .srcname = "SPC_CERT_EXTENSIONS_OBJID",
            .sn = "MS_SPC_CERT_EXTENSIONS_OBJID",
            .ln = "MS_SPC_CERT_EXTENSIONS_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.25.1",
            .srcname = "szOID_NTDS_REPLICATION",
            .sn = "MS_NTDS_REPLICATION",
            .ln = "MS_NTDS_REPLICATION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.27",
            .srcname = "SPC_FINANCIAL_CRITERIA_OBJID",
            .sn = "MS_SPC_FINANCIAL_CRITERIA_OBJID",
            .ln = "MS_SPC_FINANCIAL_CRITERIA_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.3",
            .srcname = "szOID_SERVER_GATED_CRYPTO",
            .sn = "MS_SERVER_GATED_CRYPTO",
            .ln = "MS_SERVER_GATED_CRYPTO",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.11.1",
            .srcname = "szOID_CERT_PROP_ID_PREFIX",
            .sn = "MS_CERT_PROP_ID_PREFIX",
            .ln = "MS_CERT_PROP_ID_PREFIX",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.2",
            .srcname = "szOID_KP_TIME_STAMP_SIGNING",
            .sn = "MS_KP_TIME_STAMP_SIGNING",
            .ln = "MS_KP_TIME_STAMP_SIGNING",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.3.1",
            .srcname = "szOID_KP_CTL_USAGE_SIGNING",
            .sn = "MS_KP_CTL_USAGE_SIGNING",
            .ln = "MS_KP_CTL_USAGE_SIGNING",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.31",
            .srcname = "Windows_updates_and_service_packs",
            .sn = "MS_Windows_updates_and_service_packs",
            .ln = "MS_Windows_updates_and_service_packs",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.88.2.1",
            .srcname = "szOID_CAPICOM_DOCUMENT_NAME",
            .sn = "MS_CAPICOM_DOCUMENT_NAME",
            .ln = "MS_CAPICOM_DOCUMENT_NAME",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.88.2.2",
            .srcname = "szOID_CAPICOM_DOCUMENT_DESCRIPTION",
            .sn = "MS_CAPICOM_DOCUMENT_DESCRIPTION",
            .ln = "MS_CAPICOM_DOCUMENT_DESCRIPTION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.44.2.2",
            .srcname = "szOID_PEERNET_IDENTITY_FLAGS",
            .sn = "MS_PEERNET_IDENTITY_FLAGS",
            .ln = "MS_PEERNET_IDENTITY_FLAGS",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.20.1",
            .srcname = "szOID_AUTO_ENROLL_CTL_USAGE",
            .sn = "MS_AUTO_ENROLL_CTL_USAGE",
            .ln = "MS_AUTO_ENROLL_CTL_USAGE",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.1",
            .srcname = "szOID_CTL",
            .sn = "MS_CTL",
            .ln = "MS_CTL",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.2",
            .srcname = "szOID_NEXT_UPDATE_LOCATION",
            .sn = "MS_NEXT_UPDATE_LOCATION",
            .ln = "MS_NEXT_UPDATE_LOCATION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.20.2",
            .srcname = "szOID_ENROLL_CERTTYPE_EXTENSION",
            .sn = "MS_ENROLL_CERTTYPE_EXTENSION",
            .ln = "MS_ENROLL_CERTTYPE_EXTENSION",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.20",
            .srcname = "SPC_JAVA_CLASS_DATA_OBJID",
            .sn = "MS_SPC_JAVA_CLASS_DATA_OBJID",
            .ln = "MS_SPC_JAVA_CLASS_DATA_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.21",
            .srcname = "SPC_INDIVIDUAL_SP_KEY_PURPOSE_OBJID",
            .sn = "MS_SPC_INDIVIDUAL_SP_KEY_PURPOSE_OBJID",
            .ln = "MS_SPC_INDIVIDUAL_SP_KEY_PURPOSE_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.22",
            .srcname = "SPC_COMMERCIAL_SP_KEY_PURPOSE_OBJID",
            .sn = "MS_SPC_COMMERCIAL_SP_KEY_PURPOSE_OBJID",
            .ln = "MS_SPC_COMMERCIAL_SP_KEY_PURPOSE_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.10.7",
            .srcname = "szOID_MICROSOFT_RDN_PREFIX",
            .sn = "MS_MICROSOFT_RDN_PREFIX",
            .ln = "MS_MICROSOFT_RDN_PREFIX",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.28",
            .srcname = "SPC_LINK_OBJID",
            .sn = "MS_SPC_LINK_OBJID",
            .ln = "MS_SPC_LINK_OBJID",
            .desc = NULL
        },
        {
            .oid = "1.3.6.1.4.1.311.2.1.29",
            .srcname = "SPC_HASH_INFO_OBJID",
            .sn = "MS_SPC_HASH_INFO_OBJID",
            .ln = "MS_SPC_HASH_INFO_OBJID",
            .desc = NULL
        },
    };
    
    #endif  

{% endhighlight %}
<br/>
and code to import these OIDs into OpenSSL:  
{% highlight c %}

    // initialize OpenSSL
    SSL_load_error_strings();
    SSL_library_init();
    // load custom OIDs into OpenSSL
    for (size_t i=0; i < sizeof(custom_oids)/sizeof(c_oid_t); i++) {
        int nid = OBJ_create(custom_oids[i].oid,
                custom_oids[i].sn,
                custom_oids[i].ln);
    }

{% endhighlight %}
<br/>
Enjoy!
