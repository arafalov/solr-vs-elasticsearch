# Introduction

Comparisons between Solr and ElasticSearch are common and popular. However, they focus on the feature checklists and are very shallow.

This book will look at the real search use-cases (searching multiple fields, dynamic fields, data import, nested documents, etc) and see how the solutions are represented in Solr's and ElasticSearch's paradigms. Some usability aspects will also be discussed (such as minimal configuration, dynamic field types, JSON handling).

# Political level

Should this be Solr vs. ElasticSearch. Or LucidImagination vs. ElasticSearch? Or even Cloudera vs. ElasticSearch?

# Philosophy level

## Kitchen Sink vs. Components
Solr is a Kitchen Sink. Elastic Search is small core + plugins. But what does ES small initial size mean for common operations?

## Clients

# Technical level

# Simple example
1. Download
2. Unpack
3. Start
4. Run the first example (does ES ship with one?)
5. Check it on command line
6. Check it in web browser (flash development-only)

Onboarding experience - a separate category or discuss here?

# Cases

## The case of the Palantír
Administration console

Discuss difference between Open Source and commercial
ES suggests registration after 7 days. How? Why? Also shares data with central server (phones home)

The production cost of Marvel (ES Console) is fairly low ($500/year). However, that's not what it's about. Most likely it is more of a signal. If your company cannot figure out a way to give ES $500 for a useful piece of software (life without Marven/Sense is hard), what chances are your company will be willing to pay significantly higher fees for ES other software/services? And, in that case, how much does ES wants to keep you as a non-paying customer. They still do of course, to grow the ecosystem and community. But, they probably don't mind if you suffer a bit without a useful tool like a console. 

Whereas, Solr bundles the Admin console with the distribution and it is featured prominently in tutorials and troubleshooting guides. One can rely on users having access to the console. With ElasticSearch, not so much.

## The case of file-sizes 
Javadoc, etc

## The case of mangled names

## The case of PDF processing

## The case of client ecosystem

## The case of index size 
store all by default, ES document field vs. index field vs ???

## The case of dynamic fields 
ES equivalent? Templates?

## The case of schemaless mode 
How to use, how to modify the sequence (e.g. date formats)

## The case of Castle in the Cloud

## The case of a Russian doll
nested documents, finding parents, finding children, finding combined
ES has pretend nested documents and real nested documents. 

## The case of mismatched socks
Diferent schemas overlayed on the same index
How does it work with atomic update?

## The case of stacking barels
Multi-collection grouping aliases with rolling membership (e.g. for monthly logs collection)

## The case of committed flusher
Solr has hard/soft commit, reopen/not-reopen searcher (4 states, not all make sense)

ElasticSearch has refresh (soft commit with reopened searcher) and flush (hard commit with searcher not reopened)

# Complex example
