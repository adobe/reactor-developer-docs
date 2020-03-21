---
title: Paging
---

# Paging

APIs results are paged. The default page size is 25 elements. Details about the pagination are reported in the meta.pagination section of the API response.

`"meta": {"pagination": {"current_page": 1, "next_page": 2, "prev_page": null,  "total_pages": 4, "total_count": 90}}`

It is possible to get a specific page and to modify the size of a page.

## Get a specific page

To get a specific page.

`GET /properties/:property_id/data_elements?page[number]=<page number>`

## Change the page size

To change the page size.

`GET /properties/:property_id/data_elements?page[size]=<page size>`

The options can be combined together.

`GET /properties/:property_id/data_elements?page[size]=<page size>&page[number]=<page number>`

