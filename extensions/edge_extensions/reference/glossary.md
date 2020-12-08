---
title: Glossary
order: 2
---

### Glossary of Terms

- __Launch__ = This is the public brand name Adobe has assigned to the product.
- __Reactor__ = This is used to describe the underlying services that power Launch.  You'll see it most commonly applied to the API that Launch is built upon, but you may also run into it when digging through our Git repos.
- __Turbine Edge__ = This is the name given to the JavaScript rule engine component within the Reactor Framework. It has been open sourced here: [https://github.com/adobe/reactor-turbine-edge](https://github.com/adobe/reactor-turbine-edge). It is responsible for executing the client-side rule logic that framework developers can expand through extensions.
- __Extensions__ = The name given to the pluggable modules that developers can extend and add to the platform in order to provide new or template functionality to the Launch product.
- __Core Extension__ = Because we dog-food our own platform, most of the generic interactions like custom code, path, etc. that users/marketers would need from a edge rule creator are built as their own extension.  Adobe will own and maintain this extension. We recommend developers not try to re-invent this functionality in their own extensions.
- __DTM__ =  Acronym for "Dynamic Tag Management" product offering by Adobe.  Adobe acquired Satellite in 2013 and re-branded it as Dynamic Tag Management.  It is currently provided free of charge to all Adobe Experience Cloud customers.  As of this writing, it is the most widely used Tag Manager on the market.  Users of DTM can migrate to Launch at their discretion and will NOT be required to re-implement or re-tag their sites or properties.
- __Data Elements__ = Data elements are the building blocks for rules. Data elements let you create a data dictionary (or data map) of commonly used items on a page, regardless of where they originate (query strings, URLs, or cookie values) for any object that is contained on your site. You use data elements to build a data layer that can be used for Analytics and other data collection tools.
- __Conditions__ = A logical set of criteria that must be met as part of the sequence of a rule in order to proceed to either the next condition or to the final action(s). These are extensible as part of the framework and new options added within extensions.
- __Actions__ = Any process that is to take place after an event is triggered and all conditions are met. An example is a beacon call from the browser. These are extensible as part of the framework and new options added within extensions.
