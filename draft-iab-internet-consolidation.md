---
title: Considerations on Internet Consolidation and the Internet Architecture
abbrev: Consolidation
docname: draft-iab-internet-consolidation-latest
date:
category: info

ipr: trust200902
keyword: Internet-Draft

stand_alone: yes
pi: [sortrefs, symrefs]

author:
  -
    ins: J. Arkko
    name: Jari Arkko
    org: Ericsson
    email: jari.arkko@piuha.net
  -
    ins: B. Trammell
    name: Brian Trammell
    org: ETH Zurich
    email: ietf@trammell.ch
  -
    ins: M. Nottingham
    name: Mark Nottingham
    org: Fastly
    email: mnot@mnot.net
  -
    ins: C. Huitema
    name: Christian Huitema
    org: Private Octopus Inc.
    email: huitema@huitema.net
  -
    ins: M. Thomson
    name: Martin Thomson
    org: Mozilla
    email: martin.thomson@gmail.com
  -
    ins: J. Tantsura
    name: Jeff Tantsura
    org: Nuage Networks
    email: jefftant.ietf@gmail.com

normative:

informative:

--- abstract

Is Internet traffic consolidating, i.e., moving towards a larger fraction of
traffic involving a small set of large content providers, social networks, and
content delivery platforms? It certainly appears so. But why is this happening,
and what might this mean for the Internet?

--- middle

# Introduction

A recent discussion topic has been the role of smaller vs. larger players in the
Internet ecosystem. Is Internet traffic consolidating, i.e., moving towards a
larger fraction of traffic involving a small set of large content providers,
social networks, and content delivery platforms? It certainly appears so, though
more research on this topic would be welcome.

Why is this happening, and what might this mean for the Internet? Are our
technology and architecture choices affecting some of these trends? Would
different technology change the trends in some fashion?

Our engineering remit is to focus on technology, but of course we also want to
understand the implications and externalities of the technical arrangements we
design. Technology affects economics and vice versa. The Internet technology
community continues to make decisions that have ramifications on Internet
systems, just as we are subject to forces that affect them: the consolidation
trend also raises relevant and interesting technical and architectural
questions.

As technologists, one question we have is whether there are changes in
technology that would help reduce technically-driven large-player advantages.
This would lead to less dependence on a few players and other advantages.

This memo reviews areas where consolidation may be occurring in the Internet,
and discusses the potential reasons for this. {{factors}} discusses
consolidation and the reasons behind the creation of larger entities, and
{{actions}} looks at some actions that might alleviate the situation.

Note: If you are interested on this or other architecture-related topics, please
subscribe to the IAB architecture discussion mailing list,
architecture-discuss@iab.org, as one forum for discussion.

# Factors Leading to Consolidation {#factors}

In general, an efficient market such as the Internet tends to enable winners to
take large market shares. Efficiences of scale help this process further.

The effects of these factors can be seen, for instance, in provisioning of
content and services, social media, or cloud systems; likewise, ISP services
often achieve better efficiency at scale. Similar effects can also be seen with
operating systems, Web browsers, application stores, and other tools.

At the same time, of course, the Internet allows plenty of choice both in these
and other areas. Too many or too few choices create different kinds of
problems.

It would be useful to break these general factors and observations down a bit
further. In particular, it is useful to distinguish market or economic factors
from technical factors.

## Economic Factors

The primary economic factors relate to scale, network effects, and lack of
barriers for serving larger set of customers. The scaling benefits are natural
for many types of businesses. And many Internet-based businesses can potentially
serve a very large customer base, as the cost of replicating and delivering
their service to new customers or areas is small.

The network effect, however, has a potentially even more pronounced impact. The
network effect means that each additional user in a network adds to the value of
the network for all users in the network. As a result, the value of services
provided by a large provider can be bigger than the value of those provided by a
smaller provider.

There is an important distinction between different applications of the network
effect, however. Consider e-mail and a social media application, for instance.
For e-mail, interoperability between different domains and servers allows anyone
to use email with each other, increasing the value of the e-mail application.
However, most popular social media applications are closed systems, where there
is no interoperability for the application with other systems. As a result, the
network effects acrue to the large individual social media systems rather than
the users of any system as in e-mail.

One of the fundamental design principles of today's Internet was "permissionless
innovation", the idea that a network could be simple but still powerful enough
that essentially any application could be built on top of it, without a need to
arrange any special support from anyone else for the application. This is what
enables the end-to-end principle to work, and allows free development of
innovative applications over a common network.

There is an interesting contradiction in the kinds of openness and standards
that are needed for the network and the applications. Once the network is
powerful enough, it becomes possible to build complex applications that do not
need to be similarly open or standardised. We call this the Permissionless
Completeness Theorem.

## Fundamental Factors

Another class of factors relates to fundamental issues, effects that are
inherent to the services that are being provided.

One example of such factors is speed of light; low-latency services can
fundamentally only be provided through globally distributed data centers. These
are often provided built by large organisations, although collaborative and data
center or cloud computing service approaches also exist.

A similar issue has arisen in recent years around large-scale denial-of-service
attacks, and how various entities can deal with them. While the largest attacks
affect all players (see, for instance, the Dyn attacks in October 2016), it is
also true that large cloud- and content delivery providers can better deal with
such attacks due to their scale. This is one reason that attracts many network
services to such providers.

## Technology Factors

One of the key questions is whether we are seeing developments that are driven
by economic factors or whether fundamental reasons or lack available technology
drives particular models. For instance, centralised solutions might desirable
due to business incentives, or they might be necessary because there is no
distributed, collaborative solution.

For instance, some technical issues have historically not been easy to solve,
such as e-mail spam, which has lead to reliance on non-technical solutions.
Today, it is becoming increasingly difficult to run your own mail services,
essentially forcing many organisations and individuals to employ larger
providers. The issues relate directly to size of entities; no one can afford to
disconnect from the largest providers. But as a small entity, there is little
leverage to convince peer entities or various supporting white/blacklist
entities to deal with you properly.

Many Internet services are based on gathering data about users, and using that
data for, for instance, targeted advertisements. More data from more users makes
it possible to run a service more accurately or with better results; here again
scale brings advantages.

These advantages are only getting larger with the advent AI- and machine
learning -based technologies. The more users a service has, the more data is
available for training machine learning models, and the better the service
becomes, bringing again more users.

A more current trend is that more and more content is becoming available
locally, from a content delivery or provider function directly on your own ISP's
network. This trend seems strong, and eventually most of the content will be
delivered this way, reducing the role that global IP connections across the
Internet play. By some metrics this has already happened; what practical -
positive or negative - impacts might this have on the Internet technology?

There are also security issues, and tradeoffs in centralization vs. distribution
vs. security. The large entities are generally better equipped to move to most
recent and most secure technology. For instance, The traditional DNS protocol
stack shows signs of aging, but due to legacy of deployed systems, it is
difficult to evolve it. However, there has been a lot of interest in the area of
protecting the privacy of DNS queries at the IETF DPRIVE working group, or using
web based tools (HTTP, TLS, etc) to transfer DNS information (at the IETF DOH
working group).

Modern web-based tools could potentially offer much more flexibility, efficiency
and protection from on-the-path inspection or changes. These tools are also
easily deployed in existing systems, browsers and can pass current firewalls. At
the same time, we see a trend towards the use of common DNS resolver services in
the global Internet (such as Cloudflare's 1.1.1.1 or Google's 8.8.8.8). Evolving
the services or protocols offered by these centralised services is also
relatively easy, particularly if the provider of these services at the same time
can affect the capabilities of large numbers of client devices (e.g., Android
mobile phones).

Taken together, this can result in faster evolution, better security against
on-the-path attackers, and overall improved DNS service for end users. However,
it is also useful to step back and consider the overall security effects of
these developments. Two contradictory factors are at play. First, it is
beneficial to reduce the number of parties that have access to data, e.g., via
encrypting traffic. But second, a change that replaces information or service
from a distributed network of providers to a smaller, centralised set of
providers does have some downsides. In particular, it can create high value
targets for attackers or intelligence agencies to go after. It would be more
difficult to gather information from many different ISP resolvers than to serve
a request one entity that provides these services for large number of users.

# Call for New Work {#actions}

## Understanding Assumptions

Are there assumptions about the Internet architecture that no longer hold in a
world where larger, more centralised entities provide big parts of the Internet
service? If the world changes, the Internet and its technology/architecture may
have to match those changes.

## Technology to Alleviate Large-Scale Advantages

It appears that level the playing field for new entrants or small players brings
potential benefits, and allows new innovation solutions to grow large. Are there
technical solutions that are missing today?

Of course, it may well be that technology improvements are hard to come by.
Nevertheless, recognising the risks of consolidation in both current and
proposed future technologies is the first step in proactively avoiding those
risks where possible.

One avenue where further IETF work would be beneficial is better support for
federation, which would enable entities (be they large or small) to work
together to provide global services.

What IETF topics that should be pursued to address some of the issues around
consolidation?

## Research

More work is needed to measure the level centralization or consolidation in
various aspects of the Internet, from Internet traffic flows to economics.

Research on distributed solutions to various Internet issues is also
welcome.

What other research on this topic should be driven forward?

# Open Issues

Edit the document considering Jari and Brian's discussion in Montreal. The
following items may be useful avenues forfurther thinking about this topic, but
could also be complete red herrings:

- The fundamental things we can do about consolidation are (1) migration toward
  more distributed architectures (not mentioning the b word!); (2) regulation or
  political solutions; or (3) give up.
- We prefer not to see regulation...
- "Blockchain" isn't really a solution, and it (and the cryptocurrencies
  implemented using it) is taking up all the oxygen in discussions about
  decentralization and re-distributions.
- Say we succeed in building out an architecture that supports properly
  distributed/federated services up the stack. This still only helps the service
  proders, not necessarily individual Internet users whos still have to deal
  with either a large consolidated company or large federated union of companies
- Nonsequitur: A "third party overseer" role might be useful in IOT systems.

# Acknowledgments

The authors would like to thank the members of the Internet Architecture Board,
Geoff Huston, Gonzalo Camarillo, Olaf Kolkman, and many others with whom we have
had interesting discussions in this problem space.
