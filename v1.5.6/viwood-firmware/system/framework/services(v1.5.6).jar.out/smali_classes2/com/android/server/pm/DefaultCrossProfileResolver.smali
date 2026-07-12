.class public final Lcom/android/server/pm/DefaultCrossProfileResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "DefaultCrossProfileResolver.java"


# instance fields
.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    .line 52
    iput-object p3, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    return-void
.end method


# virtual methods
.method public createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 11

    .line 275
    invoke-virtual {p2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v5

    .line 276
    invoke-virtual {p0, v5}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return-object v7

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v6, v5

    move-wide/from16 v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v8

    move v5, v6

    .line 282
    invoke-static {v8}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v7

    .line 287
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 288
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 289
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    move/from16 v3, p7

    .line 291
    invoke-interface {p1, p2, v3, v5}, Lcom/android/server/pm/Computer;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    goto :goto_1

    :cond_2
    move/from16 v3, p7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-object p1, v7

    :goto_1
    if-nez p1, :cond_4

    return-object v7

    .line 304
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    move v7, v0

    move v9, v7

    :goto_2
    if-ge v7, v6, :cond_7

    .line 306
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 307
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_5

    move-object/from16 v10, p8

    goto :goto_3

    .line 310
    :cond_5
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v10, p8

    .line 311
    invoke-interface {v10, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v1, :cond_6

    goto :goto_3

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileResolver;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v2, p3

    move-wide/from16 v3, p5

    .line 316
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    .line 315
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 319
    :cond_7
    new-instance p0, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-direct {p0, p1, v9, v5}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    return-object p0
.end method

.method public filterResolveInfoWithDomainPreferredActivity(Landroid/content/Intent;Ljava/util/List;JIII)Ljava/util/List;
    .locals 0

    .line 133
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 135
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 136
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 137
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 138
    iget p4, p3, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-le p4, p7, :cond_0

    .line 139
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final queryCrossProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZLjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 17

    move-object/from16 v9, p2

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    .line 213
    :cond_0
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 217
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_6

    .line 219
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 220
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v15

    .line 222
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v13

    .line 224
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v13

    :goto_2
    if-nez v0, :cond_4

    .line 225
    invoke-virtual {v11, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    if-nez p8, :cond_4

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v16, v10

    move v10, v1

    move-object/from16 v1, p1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v16, v10

    goto :goto_4

    .line 229
    :goto_3
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_5

    .line 235
    :cond_5
    invoke-virtual {v11, v15, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v16, v10

    move-object/from16 v2, v16

    :goto_5
    if-nez v2, :cond_7

    return-object v16

    .line 243
    :cond_7
    iget-object v1, v2, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 244
    iget v1, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CrossProfileResolver;->isUserEnabled(I)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v16

    .line 249
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move/from16 v7, p7

    invoke-virtual {v0, v1, v7}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v16

    :cond_9
    return-object v2
.end method

.method public final querySkipCurrentProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;
    .locals 12

    if-eqz p2, :cond_1

    .line 167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 169
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 170
    invoke-virtual {v5}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 173
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/DefaultCrossProfileResolver;->createForwardingResolveInfo(Lcom/android/server/pm/Computer;Lcom/android/server/pm/CrossProfileIntentFilter;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .locals 11

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p8, :cond_0

    goto/16 :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    move-wide/from16 v6, p6

    move-object/from16 v3, p9

    move-object/from16 v9, p11

    .line 86
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/DefaultCrossProfileResolver;->querySkipCurrentProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JILjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 90
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v0, p4}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    move-wide/from16 v6, p6

    move-object/from16 v3, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    .line 94
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/DefaultCrossProfileResolver;->queryCrossProfileIntents(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZLjava/util/function/Function;)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v9

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    invoke-virtual {p0, p4}, Lcom/android/server/pm/CrossProfileResolver;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 102
    iget v7, p0, Landroid/content/pm/UserInfo;->id:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move-wide/from16 v4, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    move-object v9, p0

    :cond_3
    if-eqz v9, :cond_5

    .line 108
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    if-eqz v9, :cond_5

    .line 111
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-object v0
.end method
