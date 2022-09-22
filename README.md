# ERC-1155S

## Introduction

ERC-1155S is an extension protocol for [Cosmo](https://cosmo.fm) to realize soul-bound tokens based on ERC-1155. It has more general scalability and composability and serves as a foundation to support soul certification based on soul metadata and credentials, soul recovery based on Social Recovery, SBT authorization based on licenses, and the programmability and interoperability of SBT.

## Design

We believe SBT is an integral and necessary element in Web3 social products. By linking users' behaviors and portraits in Cosmo to their souls in Web3 and permanently storing this reputation data in the form of SBT, Cosmo can build a better Web3 social and content community. As a result of the non-transferability and early openness of SBT, the Web3 soul based on various SBTs constitutes a brand-new reputation and credit evaluation system.

However, SBT also faces some very real obstacles, such as soul fraud caused by transfer and leasing, restoration of soul and reputation after wallet theft, privacy problems caused by early publicity, and soul portrait and reputation cheating caused by bribery. We believe that soul fraud, soul recovery, and privacy issues are the biggest obstacles to the early implementation of SBT.

Below outlines how Cosmo solves these problems:

### Soul Fraud

In a decentralized society driven by SBT, the harm caused by the fraudulent use of souls can be huge. The soul should have a continuous consistency of behavior, which is based on the behavior of a constant actor (which can be a person, organization, or company). Although SBT is not transferable, the mnemonic or private key of the wallet is transferable (although this is not secure, it is still possible driven by interests); once the individual behind the soul is transferred, it will cause uncertainty of soul and reputation.

If a community is deeply entrenched around soul and reputation, it often means that individuals with an excellent reputation have more incentives and rights in the community. At this time, the uncertainty of the fraudulent use of souls can cause great damage. In the process of designing Cosmo, this problem became very prominent. For example, when we are expected to give more community incentives to high-quality content creators, creators may sell or lease their Web3 identities for profit reasons—the transferred actor can still enjoy a lot of incentives brought by historical reputation, but for the community, social and content creation based on its original actor cannot be guaranteed—this will directly damage the healthy operation of the entire community.

Thus, in the paper, a precondition of the soul is able to be "self-certified". This means that when the soul is used fraudulently, other people can spot the clue at a glance, thereby avoiding the problem. The paper roughly proposes three solutions: 1. Introduce verifiable identity or content that contains a soul foundation; 2. Zero-knowledge proof; 3. Implement a common interest mechanism that promotes the community to continuously maintain the integrity of the souls.

In Cosmo, we mainly use the first scheme to avoid the problem of "Soul Fraud", which requires a sufficiently rich background content for the souls. Unfortunately, so far, the background content on the chain is still mostly NFT, OAT, POAP, and various assets. It is difficult for these on-chain assets to have a strong relationship with individuals in terms of "self-certification". For example, although holding various pixel-theme NFTs can express the soul's preference for pixel-theme art, this feature is difficult to be easily "self-certified", as it is difficult to distinguish whether these pixel-theme NFTs are purchased for the purpose of investing or of personal preference. In addition, the current forms of assets on the chain are too simple, and the quantity is not rich enough, which are also factors that make it difficult for it to support as the background content of the soul.

Therefore, we believe that soul should be based on a social network with rich content because social networks with rich content (not assets) are "self-certified". In the early days of Web2, like today's Web3, it did not have a soul. However, with the establishment of social relationships on Web2, a large number of user-generated content was published on the Web2 identity, making the identity of Web2 gradually acquire the properties of a soul. For example: When we see Kanye West's Twitter account posting a comment on a piece of news, it's natural to think of Kanye West's personal characteristics in terms of content, and the comment can further strengthen its soul (and if the comment was posted by someone else, it might be seen at a glance).

**A core feature of Cosmo is SNS integration. With [📲 SNS Integration](https://whitepaper.cosmo.fm/sns-integration), users are required to associate the soul foundation of SBT with their content-rich Web2 social media accounts, thereby solving the problem of fraudulent use of souls. Once a user associates their Web3 identity (soul) with a Twitter account, this binding cannot be changed permanently. This means that when users enjoy the existing soul and reputation dividends brought by the Web2 social connection in Cosmo, this strong connection will also make the fraudulent use of the soul impossible—as imposter behavior can be easily identified in a soul background enriched in Web2 content.**

### Soul Recovery

No one can guarantee that they will never lose their wallet.

If the wallet is lost and the soul cannot be recovered, it becomes extremely painful in a Web3 world, as you will not be able to prove that a lost soul belongs to you or be helpless if the soul is stolen by someone else. The cost of a lost soul will not be less than a rebirth, as you will need to build your image and reputation from scratch.

Therefore, we believe that it is reasonable and necessary to design protocols for users to reclaim "a soul that belongs to you" through social recovery. In solving the problem of "Soul Fraud" above, we asked users to associate the soul foundation of SBT with their Web2 social media accounts. In fact, we based SBT soul on the user's portrait and reputation on the Web2 social network. When a user unfortunately loses or leaks the mnemonic or private key of the soul wallet, we believe it is necessary to support the restoring of the Web3 soul based on the Web2 identity (soul).

**When the user needs to perform soul recovery, Cosmo will verify the ownership of each Web2 social media account associated with the user and send a verification code to a number of Twitter friends who are pre-set for social recovery, requiring more secure means (such as face-to-face or phone call) to inform users to complete social recovery. Once the above verification is completed, Cosmo will restore the soul by completely transferring the SOUL ownership based on the Web2 social association to the new wallet provided by the user.**

### Private Issues

Due to the complexity of privacy protection on the chain, in the paper, SBT is public during the early stages. Although this helps "self-certified", too much disclosure of SBT may lead to the leakage of individual private information.

**Therefore, Cosmo uses encrypted storage to save user content on the chain. At the same time, users can dynamically set content access rights through Cosmo to control the public visibility of content. For Cosmo's specific user data storage and SBT minting methods, please refer to [🔏 Data & Privacy](https://whitepaper.cosmo.fm/data-and-privacy).**
