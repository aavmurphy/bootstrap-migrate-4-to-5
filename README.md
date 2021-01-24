# Bootstrap: Migrate from  v4 to v5 Helper

Identify class name and data-attribute name changes when migrating from Bootstrap v4 to v5

Prints out a list of files with 1) changed CSS classes, 2) removed CSS classes, 3) renamed data-attributes, 4) changes data-attributes

Its written in Perl. Ports in other languages welcome. Just do a pull request.

The script's config. is in a YAML file.

## Using perl
You may have to install a perl YAML lib. Either will do
`sudo cpan install YAML`
`sudo apt install libyaml-perl` 

## Sample output
```

Migrate from Bootstrap v4 to v5 helper

- check the script for some config

rename: arrow =>  popover-arrow or tooltip-arrow
 /saturdaywalkers/swc/maps_html/admin/cheshire-west-and-chester.html
 /saturdaywalkers/swc/maps_html/admin/cumbria.html

rename: badge-(primary|secondary|info|success|warning|light|dark) =>  bg-$1
 /saturdaywalkers/swc/maps_html/london-parks/abney-park-cemetery.shtml
 /saturdaywalkers/swc/maps_html/london-parks/addington-hills.shtml

rename: badge-pill =>  rounded-pill
 /saturdaywalkers/swc/perl/templates/swc_book_walk_index.html
 /saturdaywalkers/swc/public_html/long-distance-path/1066-country-walk/index.html


rename: border-left =>  border-start
 /saturdaywalkers/swc/public_html/rent-contract/index.html

rename: border-right =>  border-end
 /saturdaywalkers/swc/public_html/rent-contract/index.html

rename: close =>  btn-close
 /saturdaywalkers/swc/maps_html/admin/cumbria.html
 /saturdaywalkers/swc/maps_html/admin/index.shtml

rename: float-(sm-|md-|lg-|xl-|)left =>  float-$1start
 /saturdaywalkers/swc/public_html/walk/the-broomway-and-foulness-island/walk_details.html

rename: float-(sm-|md-|lg-|xl-|)right =>  float-$1end
 /saturdaywalkers/swc/maps_html/ssi_maps/brand_menu.html
 /saturdaywalkers/swc/perl/templates/twitter_nearby_tweets.html

rename: ml-(0|1|2|3|4|5|auto|n1|n2|n3|n4|n5) =>  ms-$1
 /saturdaywalkers/swc/perl/templates/weather_tides.html
 /saturdaywalkers/swc/public_html/generated/weather/tide-bournemouth.html

rename: mr-(0|1|2|3|4|5|auto|n1|n2|n3|n4|n5) =>  me-$1
 /saturdaywalkers/swc/maps_html/historic-houses-castles-gardens-ruins/list.shtml
 /saturdaywalkers/swc/maps_html/ign-france/agency.html

rename: pr-(0|1|2|3|4|5|auto) =>  pe-$1
 /saturdaywalkers/swc/public_html/long-distance-path/cotswold-way/club-walks.html

rename: sr-only =>  visually-hidden
 /saturdaywalkers/swc/perl/templates/swc_book_walk_slideshow.html
 /saturdaywalkers/swc/public_html/short-walk/angel-to-limehouse/slideshow.html
 /saturdaywalkers/swc/public_html/short-walk/beckenham-place-park/slideshow.html

rename: sr-only-focusable =>  visually-hidden-focusable
 /saturdaywalkers/swc/public_html/site/font-awesome-tree-shaker.js

remove: jumbotron
 /saturdaywalkers/swc/public_html/index.shtml

remove: media
 /saturdaywalkers/swc/maps_html/hills/trail-magazine/intro.html

```
