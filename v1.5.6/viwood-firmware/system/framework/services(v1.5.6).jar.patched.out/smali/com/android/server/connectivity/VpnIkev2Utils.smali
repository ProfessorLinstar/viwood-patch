.class public abstract Lcom/android/server/connectivity/VpnIkev2Utils;
.super Ljava/lang/Object;
.source "VpnIkev2Utils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VpnIkev2Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static buildChildSessionParams(Ljava/util/List;)Landroid/net/ipsec/ike/ChildSessionParams;
    .locals 2

    .line 124
    new-instance v0, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;-><init>()V

    .line 127
    invoke-static {p0}, Lcom/android/server/connectivity/VpnIkev2Utils;->getChildSaProposals(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 128
    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    goto :goto_0

    .line 131
    :cond_0
    sget p0, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 132
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalAddressRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 133
    invoke-virtual {v0, p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 134
    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->addInternalDnsServerRequest(I)Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams$Builder;->build()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public static getChildSaProposals(Ljava/util/List;)Ljava/util/List;
    .locals 10

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x100

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v4, v6}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 227
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasNormalModeAlgorithms(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 228
    new-instance v4, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 232
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xd

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 233
    const-string/jumbo v9, "rfc3686(ctr(aes))"

    invoke-interface {p0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 234
    invoke-virtual {v4, v8, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 236
    :cond_1
    const-string v8, "cbc(aes)"

    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 237
    invoke-virtual {v4, v7, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    goto :goto_0

    .line 243
    :cond_2
    const-string v2, "hmac(sha512)"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xe

    .line 244
    invoke-virtual {v4, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 246
    :cond_3
    const-string v2, "hmac(sha384)"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    invoke-virtual {v4, v8}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 249
    :cond_4
    const-string v2, "hmac(sha256)"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    invoke-virtual {v4, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 252
    :cond_5
    const-string/jumbo v2, "xcbc(aes)"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    .line 253
    invoke-virtual {v4, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 255
    :cond_6
    const-string v2, "cmac(aes)"

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    .line 256
    invoke-virtual {v4, v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 259
    :cond_7
    invoke-virtual {v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 262
    sget-object v2, Lcom/android/server/connectivity/VpnIkev2Utils;->TAG:Ljava/lang/String;

    const-string v4, "Missing integrity algorithm when buildling Child SA proposal"

    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    :cond_8
    invoke-virtual {v4}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_9
    :goto_1
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->hasAeadAlgorithms(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 270
    new-instance v2, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 272
    const-string/jumbo v4, "rfc7539esp(chacha20,poly1305)"

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x1c

    const/4 v6, 0x0

    .line 273
    invoke-virtual {v2, v4, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 276
    :cond_a
    const-string/jumbo v4, "rfc4106(gcm(aes))"

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0x14

    .line 277
    invoke-virtual {v2, p0, v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    const/16 v4, 0x13

    .line 279
    invoke-virtual {v2, v4, v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    const/16 v6, 0x12

    .line 281
    invoke-virtual {v2, v6, v1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 282
    invoke-virtual {v2, p0, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 284
    invoke-virtual {v2, v4, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 286
    invoke-virtual {v2, v6, v3}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 287
    invoke-virtual {v2, p0, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 289
    invoke-virtual {v2, v4, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 291
    invoke-virtual {v2, v6, v5}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 294
    :cond_b
    invoke-virtual {v2}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v0
.end method

.method public static getIkeSaProposals()Ljava/util/List;
    .locals 13

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v1, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    const/16 v2, 0xd

    const/16 v3, 0x100

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v4, 0xc

    .line 171
    invoke-virtual {v1, v4, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v5, 0xc0

    .line 172
    invoke-virtual {v1, v2, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 173
    invoke-virtual {v1, v4, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v6, 0x80

    .line 174
    invoke-virtual {v1, v2, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 175
    invoke-virtual {v1, v4, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v7, 0xe

    .line 178
    invoke-virtual {v1, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 179
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 180
    invoke-virtual {v1, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v2, 0x5

    .line 181
    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v4, 0x8

    .line 182
    invoke-virtual {v1, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 185
    new-instance v8, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    const/16 v9, 0x1c

    const/4 v10, 0x0

    .line 186
    invoke-virtual {v8, v9, v10}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x14

    .line 187
    invoke-virtual {v8, v9, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v11, 0x13

    .line 188
    invoke-virtual {v8, v11, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v12, 0x12

    .line 189
    invoke-virtual {v8, v12, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 190
    invoke-virtual {v8, v9, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 191
    invoke-virtual {v8, v11, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 192
    invoke-virtual {v8, v12, v5}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 193
    invoke-virtual {v8, v9, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 194
    invoke-virtual {v8, v11, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 195
    invoke-virtual {v8, v12, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v3, 0x2

    .line 198
    new-array v5, v3, [Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    aput-object v1, v5, v10

    const/4 v6, 0x1

    aput-object v8, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x10

    .line 199
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0x1f

    .line 202
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/16 v9, 0xf

    .line 204
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 205
    invoke-virtual {v6, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x7

    .line 206
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x6

    .line 207
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 208
    invoke-virtual {v6, v2}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    const/4 v9, 0x4

    .line 209
    invoke-virtual {v6, v9}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 210
    invoke-virtual {v6, v4}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 211
    invoke-virtual {v6, v3}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;
    .locals 6

    .line 483
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 485
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 487
    new-instance v2, Lcom/android/net/module/util/IpRange;

    iget-object v3, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    invoke-direct {v2, v3, v1}, Lcom/android/net/module/util/IpRange;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v2}, Lcom/android/net/module/util/IpRange;->asIpPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 488
    new-instance v3, Landroid/net/RouteInfo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v5, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static makeIkeSessionParamsBuilder(Landroid/content/Context;Landroid/net/Ikev2VpnProfile;Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    .locals 3

    .line 104
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getUserIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/VpnIkev2Utils;->parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v1

    .line 107
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-direct {v2, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p1}, Landroid/net/Ikev2VpnProfile;->getServerAddr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setServerHostname(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    const/4 p2, 0x2

    .line 111
    invoke-virtual {p0, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addIkeOption(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLocalIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 113
    invoke-virtual {p0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setRemoteIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    move-result-object p0

    .line 114
    invoke-static {p1, p0}, Lcom/android/server/connectivity/VpnIkev2Utils;->setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 116
    invoke-static {}, Lcom/android/server/connectivity/VpnIkev2Utils;->getIkeSaProposals()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ipsec/ike/IkeSaProposal;

    .line 117
    invoke-virtual {p0, p2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;
    .locals 3

    .line 444
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    const-string v1, "@#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 448
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v0

    .line 449
    :cond_0
    const-string v1, "@@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 452
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 457
    :cond_2
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 459
    :cond_3
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 461
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_4

    .line 463
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    check-cast p0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    return-object v0

    .line 464
    :cond_4
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_5

    .line 466
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    check-cast p0, Ljava/net/Inet6Address;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    return-object v0

    .line 468
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "IP version not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 471
    :cond_6
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 473
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v0

    .line 476
    :cond_7
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setIkeAuth(Landroid/net/Ikev2VpnProfile;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUserCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getRsaPrivateKey()Ljava/security/PrivateKey;

    move-result-object p0

    .line 153
    invoke-virtual {p1, v0, v1, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    return-void

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown auth method set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPresharedKey()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    return-void

    .line 143
    :cond_2
    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    .line 145
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/eap/EapSessionConfig$Builder;->setEapMsChapV2Config(Ljava/lang/String;Ljava/lang/String;)Landroid/net/eap/EapSessionConfig$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Landroid/net/Ikev2VpnProfile;->getServerRootCaCert()Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthEap(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    return-void
.end method
