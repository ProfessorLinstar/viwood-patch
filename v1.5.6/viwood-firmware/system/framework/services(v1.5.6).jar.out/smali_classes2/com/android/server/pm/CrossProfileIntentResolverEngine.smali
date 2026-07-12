.class public Lcom/android/server/pm/CrossProfileIntentResolverEngine;
.super Ljava/lang/Object;
.source "CrossProfileIntentResolverEngine.java"


# instance fields
.field public mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 72
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 73
    iput-object p3, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 74
    iput-object p4, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    .line 75
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method


# virtual methods
.method public canReachTo(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 7

    .line 286
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 287
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public final canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z
    .locals 10

    move-object/from16 v6, p6

    const/4 v7, 0x1

    if-ne p4, p5, :cond_0

    return v7

    .line 307
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface/range {p1 .. p4}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p4

    const/4 v8, 0x0

    if-eqz p4, :cond_4

    move v9, v8

    .line 313
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 314
    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 315
    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    if-ne v1, p5, :cond_1

    return v7

    .line 318
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 328
    :cond_2
    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    .line 330
    iget v1, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    iget v4, v0, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachToInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IILjava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v7

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p6

    goto :goto_0

    :cond_4
    return v8
.end method

.method public final chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;
    .locals 0

    .line 256
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldUseNoFilteringResolver(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 257
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    if-nez p2, :cond_0

    .line 259
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    .line 261
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/server/pm/NoFilteringResolver;->isIntentRedirectionAllowed(Landroid/content/Context;Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;ZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 263
    new-instance p2, Lcom/android/server/pm/NoFilteringResolver;

    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p2, p1, p0}, Lcom/android/server/pm/NoFilteringResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    return-object p2

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 269
    :cond_2
    new-instance p2, Lcom/android/server/pm/DefaultCrossProfileResolver;

    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-direct {p2, p1, p3, p0}, Lcom/android/server/pm/DefaultCrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;)V

    return-object p2
.end method

.method public combineFilterAndCreateQueryActivitiesResponse(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIIZLjava/util/List;Ljava/util/List;ZZZLjava/util/function/Function;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .locals 13

    move/from16 v6, p9

    move-object/from16 v1, p12

    move-object/from16 v0, p13

    move/from16 v11, p15

    move-object/from16 v2, p3

    .line 396
    invoke-virtual {p0, p1, p2, v2, v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p0, v0}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 402
    new-instance p0, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-object v0, p1

    move-object v7, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_0
    const/4 v12, 0x1

    if-nez p5, :cond_4

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v11, :cond_3

    .line 408
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v12, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 410
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    new-instance p0, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-object v0, p1

    move-object v7, p2

    move-object/from16 v2, p4

    move/from16 v3, p6

    move/from16 v6, p9

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_3
    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p7

    move/from16 v7, p9

    move/from16 v9, p11

    move-object/from16 v5, p12

    move/from16 v8, p14

    move-object/from16 v10, p17

    move-object v6, v0

    move-object v0, p0

    .line 419
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCandidatesWithDomainPreferredActivitiesLPr(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    move v6, v7

    goto :goto_0

    :cond_4
    move/from16 v6, p9

    move-object p1, v0

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p1, v1

    .line 432
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v12, :cond_5

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 433
    invoke-virtual {p0, v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 434
    invoke-virtual {p2, v6}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 436
    :cond_5
    new-instance p0, Lcom/android/server/pm/QueryIntentActivitiesResult;

    move/from16 p2, p16

    invoke-direct {p0, p2, v11, p1}, Lcom/android/server/pm/QueryIntentActivitiesResult;-><init>(ZZLjava/util/List;)V

    return-object p0
.end method

.method public final filterCandidatesWithDomainPreferredActivitiesLPr(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZLjava/util/function/Function;)Ljava/util/List;
    .locals 14

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :goto_1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v13, "PackageManager"

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    goto :goto_4

    .line 459
    :cond_2
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filtering results with preferred activities. Candidates count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 464
    :goto_4
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCandidatesWithDomainPreferredActivitiesLPrBody(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    .line 468
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz p1, :cond_4

    .line 469
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Filtered results with preferred activities. New candidates count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-static {v13, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    return-object p0
.end method

.method public final filterCandidatesWithDomainPreferredActivitiesLPrBody(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLjava/util/List;Ljava/util/List;IZZZLjava/util/function/Function;)Ljava/util/List;
    .locals 13

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v7, p7

    .line 497
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 498
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    if-eqz p8, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v12

    .line 508
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v12

    :goto_1
    if-ge v5, v4, :cond_4

    .line 511
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_1

    .line 512
    iget-boolean v8, v6, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-nez v8, :cond_3

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x3e8

    .line 513
    invoke-interface {p1, v8, v7, v9}, Lcom/android/server/pm/Computer;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 519
    :cond_1
    iget-boolean v8, v6, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v8, :cond_2

    .line 520
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 522
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 532
    :cond_4
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    if-eqz v1, :cond_6

    .line 534
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v12

    .line 535
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 536
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 537
    iget v5, v4, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    .line 538
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 539
    iget v5, v4, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    :cond_5
    iget v5, v4, Lcom/android/server/pm/CrossProfileDomainInfo;->mTargetUserId:I

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 543
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 547
    :cond_6
    invoke-static/range {p2 .. p4}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 548
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v9, p10

    .line 551
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 556
    :cond_7
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v5, p11

    .line 557
    invoke-interface {v4, p2, v2, v7, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->filterToApprovedApp(Landroid/content/Intent;Ljava/util/List;ILjava/util/function/Function;)Landroid/util/Pair;

    move-result-object v2

    .line 558
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 559
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 562
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v9, p10

    .line 565
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 581
    :goto_4
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    const-string p2, "PackageManager"

    if-eqz p1, :cond_8

    .line 582
    const-string p1, " ...including browsers in candidate set"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-wide/32 v2, 0x20000

    and-long v2, p3, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_9

    .line 585
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 589
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object p0

    .line 593
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v12

    :goto_5
    if-ge v12, p1, :cond_e

    .line 595
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 597
    iget v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v4, v2, :cond_a

    move v2, v4

    .line 601
    :cond_a
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v1, :cond_b

    .line 602
    iget v4, v1, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v4, v5, :cond_d

    :cond_b
    if-eqz p9, :cond_c

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Considering default browser match "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v1, v3

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_e
    if-eqz v1, :cond_10

    .line 611
    iget p1, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt p1, v2, :cond_10

    .line 613
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    if-eqz p9, :cond_f

    .line 615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Default browser match "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_f
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 619
    :cond_10
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 624
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_11

    .line 625
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11
    return-object v10

    .line 569
    :cond_12
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 575
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v8, p10

    move-object v5, v6

    move v6, v7

    move v7, v0

    move-object v0, p0

    .line 573
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v10
.end method

.method public final filterCrossProfileCandidatesWithDomainPreferredActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;JLandroid/util/SparseArray;IIZ)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p5

    .line 648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 650
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 653
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 654
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 659
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v9, p3

    move/from16 v6, p6

    move/from16 v8, p8

    .line 658
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 665
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    .line 667
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    move-object/from16 v9, p2

    move-wide/from16 v11, p3

    move/from16 v13, p6

    move/from16 v15, p7

    move-object v8, v3

    .line 664
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/pm/CrossProfileResolver;->filterResolveInfoWithDomainPreferredActivity(Landroid/content/Intent;Ljava/util/List;JIII)Ljava/util/List;

    move-result-object v3

    .line 663
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 671
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 670
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p0

    .line 675
    invoke-virtual {v4, v1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasNonNegativePriority(Ljava/util/List;)Z
    .locals 1

    .line 699
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 700
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz p0, :cond_0

    .line 701
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget p0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final isNoFilteringPropertyConfiguredForUser(I)Z
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->isProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 725
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 728
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    return v1
.end method

.method public final resolveInfoFromCrossProfileDomainInfo(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 685
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 687
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 688
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    iget-object v1, v1, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;
    .locals 13

    const/4 v12, 0x0

    move/from16 v5, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 99
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;
    .locals 17

    move-object/from16 v1, p1

    move/from16 v4, p5

    move-object/from16 v0, p12

    if-eqz v0, :cond_0

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 136
    invoke-interface {v1, v7, v8, v4}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v2, v1

    move v14, v4

    move/from16 v4, p4

    goto/16 :goto_5

    .line 158
    :cond_2
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    .line 161
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 162
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 164
    iget v6, v5, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 165
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 166
    iget v6, v5, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    :cond_3
    iget v6, v5, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 170
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v12, v0

    const/4 v9, 0x0

    .line 182
    :goto_1
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_a

    .line 184
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 187
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v2, v1

    move v15, v9

    move-object/from16 v16, v14

    move v14, v4

    goto/16 :goto_4

    :cond_6
    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move-wide/from16 v5, p6

    move/from16 v4, p10

    .line 193
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->chooseCrossProfileResolver(Lcom/android/server/pm/Computer;IIZJ)Lcom/android/server/pm/CrossProfileResolver;

    move-result-object v10

    move v5, v3

    if-eqz v10, :cond_9

    .line 204
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object/from16 v1, p1

    move/from16 v4, p5

    move-object/from16 v11, p11

    move-object v2, v7

    move-object v3, v8

    move v15, v9

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object v9, v0

    move-object v0, v10

    move/from16 v10, p9

    .line 202
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/CrossProfileResolver;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 216
    :goto_2
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 219
    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/CrossProfileIntentFilter;

    iget v2, v2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    move-object/from16 v2, p0

    .line 227
    invoke-virtual {v2, v0}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v9

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object v0, v2

    move-object/from16 v16, v14

    move-object/from16 v2, p2

    move/from16 v14, p5

    .line 225
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;ZZLjava/util/function/Function;Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    move-object v2, v1

    invoke-interface {v13, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v16, v14

    move/from16 v14, p5

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, v16

    goto :goto_2

    :cond_8
    move-object/from16 v2, p1

    :goto_3
    move-object/from16 v16, v14

    move/from16 v14, p5

    goto :goto_4

    :cond_9
    move-object/from16 v2, p1

    move v15, v9

    goto :goto_3

    :goto_4
    add-int/lit8 v9, v15, 0x1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v1, v2

    move v4, v14

    move-object/from16 v14, v16

    goto/16 :goto_1

    :goto_5
    if-ne v4, v14, :cond_a

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    invoke-interface {v2, v14}, Lcom/android/server/pm/Computer;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 146
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v1, p2

    move-wide/from16 v3, p6

    move-object v0, v2

    move v5, v14

    move-object/from16 v2, p3

    .line 147
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 150
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v13
.end method

.method public shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 0

    .line 354
    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    move p2, p1

    .line 356
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 357
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 358
    invoke-virtual {p3}, Lcom/android/server/pm/CrossProfileIntentFilter;->getFlags()I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public final shouldUseNoFilteringResolver(II)Z
    .locals 0

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 713
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->isNoFilteringPropertyConfiguredForUser(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
