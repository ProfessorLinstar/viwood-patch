.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;
.super Ljava/lang/Object;
.source "DomainVerificationProxyV1.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# instance fields
.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public final mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mRequests:Landroid/util/ArrayMap;

.field public mVerificationToken:I

.field public final mVerifierComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;Landroid/content/ComponentName;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerificationToken:I

    .line 90
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mContext:Landroid/content/Context;

    .line 91
    iput-object p4, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

    .line 92
    iput-object p5, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 93
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 94
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    return-void
.end method

.method public static queueLegacyVerifyResult(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;IILjava/util/List;I)V
    .locals 8

    .line 100
    const-string v0, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    const-string v1, "Only the intent filter verification agent can verify applications"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;

    const/4 v7, 0x0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v3, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;-><init>(IIILjava/util/List;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1-IA;)V

    const/4 p0, 0x3

    invoke-interface {p1, p0, v2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->schedule(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final buildHostsString(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 4

    .line 291
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;

    move-result-object p0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-lez v1, :cond_0

    .line 298
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_0
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public isCallerVerifier(I)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->isCallerPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_9

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_0
    check-cast p2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;

    .line 152
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    iget v2, p2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->verificationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-nez p1, :cond_1

    return v1

    .line 157
    :cond_1
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    .line 158
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 161
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_2

    return v1

    .line 170
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/verify/domain/DomainVerificationInfo;->getIdentifier()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

    invoke-interface {v4, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_4

    return v1

    .line 179
    :cond_4
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->failedDomains:Ljava/util/List;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 180
    invoke-virtual {v3}, Landroid/content/pm/verify/domain/DomainVerificationInfo;->getHostToStateMap()Ljava/util/Map;

    move-result-object v3

    .line 181
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 182
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 183
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 186
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_0
    if-ltz v6, :cond_6

    .line 188
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 189
    const-string v8, "*."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 190
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 192
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 200
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 201
    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 207
    :cond_6
    iget p2, p2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->callingUid:I

    .line 208
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 210
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p2, v2, v5, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    const-string v0, "DomainVerificationProxyV1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reporting successful domains for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 216
    const-string v3, "DomainVerificationProxyV1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reporting successful domains for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :cond_7
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 222
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 v0, 0x6

    invoke-interface {p0, p2, v2, v4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    move-result p0

    if-eqz p0, :cond_8

    .line 225
    const-string p0, "DomainVerificationProxyV1"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure reporting failed domains for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 228
    const-string p2, "DomainVerificationProxyV1"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure reporting failed domains for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2
    :cond_8
    :goto_2
    return v1

    .line 127
    :cond_9
    check-cast p2, Ljava/util/Set;

    .line 132
    new-instance p1, Landroid/util/ArrayMap;

    .line 133
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getDomainVerificationInfoId(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_3

    .line 141
    :cond_a
    iget v4, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerificationToken:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerificationToken:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 142
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 141
    invoke-virtual {p1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 144
    :cond_b
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 145
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->sendBroadcasts(Landroid/util/ArrayMap;)V

    return v1

    .line 145
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public sendBroadcastForPackages(Ljava/util/Set;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 114
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 118
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->schedule(ILjava/lang/Object;)V

    return-void

    .line 118
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendBroadcasts(Landroid/util/ArrayMap;)V
    .locals 10

    .line 245
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->getPowerSaveTempWhitelistAppDuration()J

    move-result-wide v2

    .line 246
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

    invoke-interface {v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy$BaseConnection;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v1

    move-wide v4, v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 247
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x133

    const-string v9, "domain verification agent"

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 246
    invoke-interface/range {v1 .. v9}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_1

    .line 253
    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 254
    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;

    invoke-interface {v3, v2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->buildHostsString(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    .line 267
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 268
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    .line 269
    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v6, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    const-string v8, "https"

    .line 271
    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v6, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    .line 273
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    .line 275
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 277
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 279
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    move-wide v2, v4

    const/16 v5, 0x133

    .line 280
    const-string v6, ""

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    move-wide v4, v2

    .line 283
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v8, v3, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
