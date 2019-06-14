/*
Copyright 2019 Adobe
All Rights Reserved.

NOTICE: Adobe permits you to use, modify, and distribute this file in
accordance with the terms of the Adobe license agreement accompanying
it. If you have received this file from a source other than Adobe,
then your use, modification, or distribution of it requires the prior
written permission of Adobe.
*/

/* eslint-disable no-unused-vars */
/* global document, window, Element, URLSearchParams */

'use strict';


loadIcons('/css/icons/spectrum-css-icons.svg');
loadIcons('/css/icons/spectrum-icons.svg');

var curColorstop = window.localStorage.getItem("colorStop") || 'light';
function changeCSS(colorStop) {
  curColorstop = colorStop;
  Array.prototype.forEach.call(document.getElementsByClassName('spectrum'), function(el) {
    el.classList.remove('spectrum--light');
    el.classList.remove('spectrum--dark');
    el.classList.add('spectrum--'+colorStop);
  });

  window.localStorage.setItem("colorStop", colorStop);

  if (colorStop === 'light') {
    document.querySelector('link[data-pygments]').setAttribute('href', '/css/pygments.css');
  }
  else {
    document.querySelector('link[data-pygments]').setAttribute('href', '/css/pygments-dark.css');
  }
}

window.addEventListener('click', function(event) {
  var isDisabled = event.target.closest('.spectrum-TreeView-item') !== null &&
    event.target.closest('.spectrum-TreeView-item').classList.contains('is-disabled');
  var el;
  if ((el = event.target.closest('.spectrum-TreeView-item')) !== null && !isDisabled) {
    el.classList.toggle('is-open');
  }
});

var currentTitle = null;
var titles;
function setHashFromScroll() {
  var sdlDocsComponents = document.querySelector('.sdldocs-components');
  if (!sdlDocsComponents) { return; }
  var scrollTop = document.querySelector('.sdldocs-components').scrollTop;
  var minTitleCloseness = Infinity;
  var closestTitle = null;
  for (var i = 0; i < titles.length; i++) {
    var title = titles[i];
    var titleCloseness = Math.abs(scrollTop - title.offsetTop);
    if (titleCloseness < minTitleCloseness) {
      minTitleCloseness = titleCloseness;
      closestTitle = title;
    }

    if (closestTitle !== null && titleCloseness > minTitleCloseness) {
      // We're not finding closer titles now
      break;
    }
  }
  if (closestTitle && currentTitle !== closestTitle) {
    selectNavItem(closestTitle.getAttribute('href'));
    currentTitle = closestTitle;
  }
}

var selectedNavItem = null;
var nav;
function selectNavItem(href) {
  var navLink = document.querySelector('.sdldocs-nav [href="' + href + '"]');
  if (navLink) {
    var navItem = navLink.parentElement;

    if (navItem != selectedNavItem) {
      if (selectedNavItem) {
        selectedNavItem.classList.remove('is-selected');
      }
      navItem.classList.add('is-selected');

      if (navItem.offsetTop + navItem.offsetHeight > nav.scrollTop + nav.offsetHeight) {
        // Scroll down to the item
        nav.scrollTop = navItem.offsetTop - nav.offsetHeight + navItem.offsetHeight;
      }
      else if (navItem.offsetTop < nav.scrollTop) {
        // Scroll up to the item
        nav.scrollTop = navItem.offsetTop;
      }

      selectedNavItem = navItem;
    }
  }
}

window.ignoreScroll = false;

var curScale = 'medium';
var curMethod = 'standalone';
var scaleAbbreviations = {
  'medium': 'md',
  'large': 'lg'
};

window.addEventListener('DOMContentLoaded', function() {
  // Get elements once
  titles = document.getElementsByClassName('js-hashtitle');
  nav = document.querySelector('.sdldocs-nav');

  changeCSS(curColorstop);

  if (window.location.hash) {
    // Scroll to the hash
    // This is required for refreshes when the size is changed
    var el = document.querySelector(window.location.hash);
    if (el) {
      document.querySelector('.sdldocs-components').scrollTop = el.offsetTop;
    }
  }
  else {
    // Make it #official
    setHashFromScroll();
  }

  // Set the hash while scrolling
  var scrollTimeDelay = 100;
  var hashTimeout;
  var sdlDocsComponents = document.querySelector('.sdldocs-components');
  if (sdlDocsComponents) {
    sdlDocsComponents.addEventListener('scroll', function() {
      clearTimeout(hashTimeout);
      if (window.ignoreScroll) {
        return;
      }
      hashTimeout = setTimeout(setHashFromScroll, scrollTimeDelay);
    });
  }

  // scroll navigation
  var selectedNavItem = document.getElementsByClassName('spectrum-TreeView-item is-selected')[0]
  if (selectedNavItem) {
    selectedNavItem.scrollIntoView();
  }

  var CONTENT_CONTAINER = '.sdldocs-components';
  anchors.add(
    '' +
    CONTENT_CONTAINER + ' h1:not(.no-anchor), ' +
    CONTENT_CONTAINER + ' h2:not(.no-anchor), ' +
    CONTENT_CONTAINER + ' h3:not(.no-anchor), ' +
    CONTENT_CONTAINER + ' h4:not(.no-anchor), ' +
    CONTENT_CONTAINER + ' h5:not(.no-anchor), ' +
    CONTENT_CONTAINER + ' h6:not(.no-anchor)'
  );
});

function toggleAccordion(item) {
  toggleOpen(item.parentNode.parentNode);
}

function toggleMenu(elem) {
  let target = document.getElementById(elem.getAttribute('data-target'));
  toggleOpen(target);
}

function toggleOpen(elem) {
  if (elem.classList.contains('is-open')) {
    elem.classList.remove('is-open');
  }
  else {
    elem.classList.add('is-open');
  }
}
