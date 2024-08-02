# ZOHO CRM RUBY SDK 7.0 for API version 7

The Ruby SDK for Zoho CRM allows developers to easily create Ruby applications that can be integrated with Zoho CRM. This SDK serves as a wrapper for the REST APIs, making it easier to access and utilize the services of Zoho CRM. 
Authentication to access the CRM APIs is done through OAuth2.0, and the authentication process is streamlined through the use of the Ruby SDK. The grant and access/refresh tokens are generated and managed within the SDK code, eliminating the need for manual handling during data synchronization between Zoho CRM and the client application.

This repository includes the Ruby SDK for API v7 of Zoho CRM. Check [Versions](https://github.com/zoho/zohocrm-ruby-sdk-7.0/releases) for more details on the versions of SDK released for this API version.

License
=======

    Copyright (c) 2021, ZOHO CORPORATION PRIVATE LIMITED 
    All rights reserved. 

    Licensed under the Apache License, Version 2.0 (the "License"); 
    you may not use this file except in compliance with the License. 
    You may obtain a copy of the License at 
    
        http://www.apache.org/licenses/LICENSE-2.0 
    
    Unless required by applicable law or agreed to in writing, software 
    distributed under the License is distributed on an "AS IS" BASIS, 
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
    See the License for the specific language governing permissions and 
    limitations under the License.

## Latest Version

- [2.0.0](/versions/2.0.0/README.md)
    - Handled Error Structure in MassDeleteTags API.

- [1.0.0](/versions/1.0.0/README.md)
    - Ruby SDK upgraded to support v7 APIs.
    - Ruby SDK improved to support the following new APIs
      - [Export Audit Log API](https://www.zoho.com/crm/developer/docs/api/v7/create-export-audit-log.html)
      - [Cadence API](https://www.zoho.com/crm/developer/docs/api/v7/cadences/get-cadences.html)
      - [Record Clone API](https://www.zoho.com/crm/developer/docs/api/v7/record-clone.html)
      - [Duplicate Record Check API](https://www.zoho.com/crm/developer/docs/api/v7/enable-duplicate-record-check.html)
      - [Data People Enrichment API](https://www.zoho.com/crm/developer/docs/api/v7/zia-enrichment/create-ppl-enrichment.html)
      - [Data Org Enrichment API](https://www.zoho.com/crm/developer/docs/api/v7/zia-enrichment/get-config.html)
      - [Mass Delete Tags API](https://www.zoho.com/crm/developer/docs/api/v7/mass-delete-tags.html)
      - [Picklist Option API](https://www.zoho.com/crm/developer/docs/api/v7/picklist-values.html)
      - [API Fetcher](https://www.zoho.com/crm/developer/docs/api/v7/list-available-rest-apis.html)


For older versions, please [refer](https://github.com/zoho/zohocrm-ruby-sdk-7.0/releases).


## Including the SDK in your project
You can include the SDK to your project using:

- For including the latest [version](https://github.com/zoho/zohocrm-ruby-sdk-7.0/releases/tag/2.0.0)

    - Ruby SDK is available through Gem . You can download the gem using:

        `gem install ZOHOCRMSDK7_0` 

    - You can include the SDK to your project using:

        `require 'ZOHOCRMSDK7_0'`

    - The Ruby SDK will be installed in your client application.

    ### Dependencies
    - Dependencies that should be included in the project
        - install **cgi**
            ```shell
            gem install cgi
            ```
        - install **csv**
            ```shell
            gem install csv
            ```
        - install **json**
            ```shell
            gem install json
            ```
        - install **multipart-post**
            ```shell
            gem install multipart-post
            ```
        - install **rest-client**
            ```shell
            gem install rest-client
            ```
        - install **uri**
            ```shell
            gem install uri
            ```
        - install **mysql2**
            ```shell
            gem install mysql2
            ```
        - install **tzinfo**
            ```shell
            gem install tzinfo
            ```

For more details, kindly refer [here](/versions/2.0.0/README.md).
