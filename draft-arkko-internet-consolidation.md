---
title: Considerations on Internet Consolidation and the Internet Architecture
abbrev: Consolidation
docname: draft-arkko-internet-consolidation-latest
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
  -
    ins: N. ten Oever
    name: Niels ten Oever
    org: University of Amsterdam
    email: mail@nielstenoever.net

normative:

informative:
  RFC1958:

--- abstract

Many of us have held a vision of the Internet as the ultimate distributed
platform that allows communication, the provision of services, and competition
from any corner of the world. But as the Internet has matured, it seems to also
feed the creation of large, centralised entities in many areas. This phenomenon
could be looked at from many different angles, but this memo considers the topic
from the perspective of how available technology and Internet architecture
drives different market directions.

--- middle

# Introduction {#introduction}

Many of us have held a vision of the Internet as the ultimate distributed
platform that allows communication, the provision of services, and competition
from any corner of the world. But as the Internet has matured, it seems to also
feed the creation of large, centralised entities in many areas.

We use the term Internet consolidation to refer to the process of the
increasing control over Internet infrastructure and services by a
small set of organizations. Such concentration has an obvious effect
on traffic flows or whose services and systems are in daily use by large population of
Internet users, but it can also create secondary effects, where
the abiity to collect information or to affect something is
concentrated in the small set of organizations.

Consolidation may also affect technology choices and the evolution of
the Internet architecture, e.g., large organizations or organizations
providing important technology components may have a significant
impact on what technology is deployed for large numbers of users or by
other organizations.

Our first question is whether Internet is indeed consolidating?
certainly appears so, though more quantitative research on this topic
would be welcome.

This phenomenon could be looked at from many different angles, but this memo
considers the topic from the perspective of how available technology and
Internet architecture drives different market directions. How are technology
choices and fundamentals of communication affecting some of these trends?

The engineering remit at the IETF is to focus on technology, but of course we also want to
understand the implications and externalities of the technical arrangements we
design. Technology affects economics and vice versa. The Internet technology
community continues to make decisions that have ramifications on Internet
systems, just as we are subject to forces that affect them.

As technologists, one question we have is whether there are changes in
technology that would help reduce those large-player advantages that
are technically-driven.

This memo reviews areas where consolidation may be occurring in the Internet,
and discusses the potential reasons for this. {{factors}} discusses
consolidation and the reasons behind the creation of larger entities, and
{{actions}} looks at some actions that might alleviate the situation.

Note: If you are interested on this or other architecture-related topics, please
subscribe to the IAB architecture-discuss mailing list as one forum for
discussion.

# Factors Driving Consolidation {#factors}

Consolidation is driven by economic factors relating to scale and ability to
reach a large market over the Internet. In general, an efficient market such as
the Internet tends to enable winners to take large market shares.

The most visible aspects of this involve well-recognised Internet services, but
it is important to recognise that the Internet is a complex ecosystem. There are
many underlying services whose diversity, or lack thereof, are as important as
that of, say, consumer-visible social networks. For instance, the diversity of
cloud services, operating systems, browser engines is as important as that as of
application stores or the browsers themselves.

Of course, the Internet allows plenty of choice both in these and other areas.
Too many or too few choices create different kinds of problems.

It would be useful to break these general factors and observations down a bit
further. In particular, it is useful to distinguish market or economic factors
from technical factors.

## Economics

Scaling benefits are natural for many types of businesses. And many
Internet-based businesses can potentially serve a very large customer base, as
the cost of replicating and delivering their service to new customers or areas
is small.

However, typically the network effect has an even more pronounced impact. Each
additional user adds to the value of the network for all users in a network. In
some applications, such as the open web, this value grows for everyone, as the
web is a globally connected, interoperable service for anyone with a browser can
use.

There is an important distinction between different applications of the network
effect, however. Consider email as another example; anyone with an account at
any email server can use it globally. However, here we have seen much more
consolidation into few large email providers, both due to innovative,
high-quality services but also because running email services by small entities
is becoming difficult; among other things due to spam prevention practices that
tend to recognise well only the largest entities.

In some other applications, such as social media, the services have a more
closed nature. The value of being a customer of one social media service depends
highly on how many other customers that particular service has. Hence, the
larger the service, the more valuable it is. And the bigger the value difference
to the customers, the less practical choice they have in selecting a service.

In some cases, these developments also allow asymmetric relationships to form,
with the customers having less ability to affect the service than they would
perhaps wish.

# Data- and Capital-intensive Services

The scaling advantages are only getting larger with the advent of AI- and
machine learning -based technologies.

The more users a service has, the more data is available for training machine
learning models, and the better the service becomes, bringing again more users.
This feedback loop and the general capital-intensive nature of the technology
(data and processing at scale) makes it likely that the largest companies are
ahead in the use of these technologies.

# Permissionless Innovation

The email vs. social media example also highlights the interesting roles of
interoperability and the "permissionless innovation" principle -- the idea that
a network can be simple but still powerful enough that essentially any
application could be built on top of it without needing any special support from
anyone else. Permissionless innovation has brought us all the innovative
applications that we enjoy today, on top of a highly interoperable underlying
network, along with advances in video coding and other techniques used by
applications.

Paradoxically, if the underlying network is sufficiently powerful, the
applications on top can evolve without similar pressures for interoperability,
leading to the closed but highly valuable services discussed above.  We call
this the Permissionless Completeness Problem.

# Fundamentals of Communication

There are also fundamental issues. For instance, speed of light; low-latency
services can fundamentally only be provided through globally distributed data
centers. These are often provided built by large organisations, although
collaborative and data center or cloud computing service approaches also exist.

A similar issue has arisen in recent years around large-scale denial-of-service
attacks, and how various entities can deal with them. While the largest attacks
affect all players (see, for instance, the Dyn attacks in October 2016), it is
also true that large cloud- and content delivery providers can better deal with
such attacks due to their scale. This is one reason that attracts many network
services to such providers.

# Technology Factors

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

Another trend is that more and more content is becoming available locally, from
a content delivery or provider function directly on your own ISP's network. We
predict that eventually most content will be delivered this way, reducing the
role that global IP connections across the Internet play. By some metrics this
has already happened; what practical - positive or negative - impacts might this
have on the Internet technology?

There are also security tradeoffs. Large entities are generally better equipped
to move to more recent and more secure technology. For instance, the Domain Name
System (DNS) shows signs of ageing but due to the legacy of deployed systems,
has changed very slowly. Newer technology developed at the IETF enables DNS
queries to be performed confidentially, but its deployment is happening mostly
in browsers that use global DNS resolver services, such as Cloudflare's 1.1.1.1
or Google's 8.8.8.8. This results in faster evolution and better security for
end users.

However, if one steps back and considers the overall security effects of these
developments, the resulting effects can be different. While the security of the
actual protocol exchanges improves with the introduction of this new technology,
at the same time this implies a move from using a worldwide distributed set of
DNS resolvers into, again, more centralised global resolvers. While these
resolvers are very well maintained (and a great service), they are potentially
high-value targets for pervasive monitoring and Denial-of-Service (DoS) attacks.
In 2016, for example, DoS attacks were launched against Dyn, one of the largest
DNS providers, leading to some outages.

# Call to Action {#actions}

Are there assumptions about the Internet architecture that no longer hold in a
world where larger, more centralised entities provide big parts of the Internet
service? If the world changes, the Internet and its technology/architecture may
have to match those changes.

It appears that level the playing field for new entrants or small players brings
potential benefits. Are there technical solutions that are missing today?

Of course, it may well be that technology improvements are hard to come by.
Nevertheless, recognising the risks of consolidation in both current and
proposed future technologies is the first step in proactively avoiding those
risks where possible.

Assuming that one does not wish for regulation, technologies that support
distributed architectures, open source implementations of currently centralised
network functions, or help increase user's control can be beneficial.
Federation, for example, would help enable distributed services in situations
where smaller entities would like to collaborate.

Similarly, in an asymmetric power balance between users and services, tools that
enable the user to control what information is provided to a particular service
can be very helpful. Some such tools exist, for instance, in the privacy and
tracking-prevention modes of popular browsers but why are these modes not the
default, and could we develop them further?

It is also surprising that in the age of software-defined everything, we can
program almost anything else except the globally provided, packaged services.
Opening up interfaces would allow the building of additional, innovative
services, and better match with users' needs.

Silver bullets are rare, of course. Internet service markets sometimes fragment
rather than cooperate through federation. And the asymmetric power balances are
easiest changed with data that is in your control, but it is much harder to
change when someone else holds it. Nevertheless, the exploration of solutions to
ensure the Internet is kept open for new innovations and in the control of users
is very important.

- What IETF topics that should be pursued to address some of
  the issues around consolidation?

- What measurements relating to the developments centralization or
  consolidation should be pursued?

- What research, such as distributed Internet architectures,
  should be driven forward?

# Contributors

Much of the text in this memo is from a blog article written
by Jari Arkko, Mark Nottingham, Christian Huitema, Martin
Thomson, and Brian Trammell for the Internet Architecture Board
(IAB), and from a blog article written by Jari Arkko and Brian
Trammell APNIC and RIPE.

# Acknowledgements

The authors would like to thank IAB members, Geoff Huston, Gonzalo
Camarillo, Mirjam Kuehne, Robert Mitchell, Olaf Kolkman, Niels ten
Oever, and many others for interesting discussions in this problem
space.
