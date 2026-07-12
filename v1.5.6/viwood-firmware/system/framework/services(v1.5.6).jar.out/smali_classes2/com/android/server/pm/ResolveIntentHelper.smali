.class public final Lcom/android/server/pm/ResolveIntentHelper;
.super Ljava/lang/Object;
.source "ResolveIntentHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public final mResolveInfoSupplier:Ljava/util/function/Supplier;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PreferredActivityHelper;Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/UserNeedsBadgingCache;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 95
    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 96
    iput-object p4, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 97
    iput-object p5, p0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 98
    iput-object p6, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    .line 99
    iput-object p7, p0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 100
    iput-object p8, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final allHavePackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    .line 253
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 256
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_4

    .line 257
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 259
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .locals 10

    .line 541
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 542
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-nez p3, :cond_0

    .line 545
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 547
    invoke-interface {p1, v2, p5, p4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 552
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 555
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 556
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 558
    iget-object v2, p0, Lcom/android/server/pm/ResolveIntentHelper;->mInstantAppInstallerActivitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_2

    .line 559
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v1, :cond_1

    .line 560
    const-string v1, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 567
    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_3

    .line 568
    const-string v2, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_3
    new-instance v2, Landroid/content/pm/ResolveInfo;

    .line 571
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 572
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v4, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 578
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 580
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 581
    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 586
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget v1, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    goto :goto_1

    .line 590
    :cond_5
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_7
    return-object p2
.end method

.method public final chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p8

    if-eqz v7, :cond_13

    .line 158
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    const/4 v1, 0x1

    if-ne v14, v1, :cond_0

    .line 160
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_0
    if-le v14, v1, :cond_13

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v15

    .line 165
    :goto_0
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 166
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 167
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-nez v4, :cond_2

    if-eqz v10, :cond_3

    .line 168
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_12

    iget v4, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v5, v3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v4, v5, :cond_12

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v3, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v2, v3, :cond_4

    goto/16 :goto_6

    :cond_4
    move v2, v1

    .line 180
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v11, p9

    move/from16 v12, p10

    move v13, v2

    const/16 v16, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    move v1, v15

    move v8, v1

    :goto_1
    if-ge v8, v14, :cond_a

    .line 188
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 189
    iget-boolean v2, v9, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    move v10, v1

    .line 193
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 194
    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v11, p1

    .line 196
    invoke-interface {v11, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 197
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v9

    :cond_7
    :goto_2
    move/from16 v6, p9

    goto :goto_3

    :cond_8
    move-object/from16 v11, p1

    goto :goto_2

    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v1, v10

    goto :goto_1

    :cond_a
    move/from16 v6, p9

    const-wide/16 v2, 0x2

    and-long v2, p6, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    return-object v16

    .line 207
    :cond_b
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    if-ne v1, v14, :cond_c

    move v1, v13

    goto :goto_4

    :cond_c
    move v1, v15

    .line 210
    :goto_4
    iput-boolean v1, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 211
    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->getLabelRes(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 213
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    if-nez v1, :cond_d

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 221
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0, v7, v1}, Lcom/android/server/pm/ResolveIntentHelper;->allHavePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 223
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 224
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 225
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserNeedsBadging:Lcom/android/server/pm/UserNeedsBadgingCache;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserNeedsBadgingCache;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 226
    iput-boolean v13, v2, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_5

    .line 228
    :cond_e
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 230
    :goto_5
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 231
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 233
    :cond_f
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v1, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_10

    .line 236
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 237
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 236
    invoke-static {v6, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 240
    :cond_10
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_11

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 241
    :cond_11
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.dock_home"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    .line 176
    :cond_12
    :goto_6
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_13
    const/16 v16, 0x0

    return-object v16
.end method

.method public getLaunchIntentSenderForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 271
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const/4 v7, 0x0

    .line 272
    const-string v8, "get launch intent sender for package"

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move v4, v10

    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    const-wide/16 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v12, p5

    .line 274
    invoke-interface {v1, v2, v3, v4, v12}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    .line 275
    invoke-static {v10, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v15, "android.intent.category.INFO"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, p0

    .line 285
    iget-object v3, v3, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 286
    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .line 287
    invoke-interface/range {v3 .. v14}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 290
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 291
    :cond_0
    invoke-virtual {v4, v15}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 292
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p1

    move/from16 v12, p5

    .line 295
    invoke-interface/range {v3 .. v14}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v6

    .line 300
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v6, :cond_2

    .line 305
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 311
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 310
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    move-object v4, v0

    .line 313
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/content/Intent;

    aput-object v4, v7, v3

    if-eqz v5, :cond_3

    .line 317
    new-array v1, v6, [Ljava/lang/String;

    aput-object v5, v1, v3

    :cond_3
    move-object v8, v1

    const/high16 v9, 0x4000000

    const/4 v10, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p4

    move/from16 v11, p5

    .line 313
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 319
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1

    .line 276
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLaunchIntentSenderForPackage() from calling uid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not own package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIntentActivityOptionsInternal(Lcom/android/server/pm/Computer;Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move/from16 v3, p9

    .line 598
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 599
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-wide/from16 v5, p7

    move v8, v7

    .line 602
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    const/4 v6, 0x0

    move-wide/from16 v2, p7

    move/from16 v4, p9

    move v5, v8

    .line 600
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v7

    move v2, v5

    const/4 v5, 0x0

    .line 604
    const-string/jumbo v6, "query intent activity options"

    const/4 v4, 0x0

    move/from16 v3, p9

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 606
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x40

    or-long v4, v7, v14

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v6, p9

    .line 608
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v3

    .line 611
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    const-string v2, ": "

    const-string v4, "PackageManager"

    if-eqz v1, :cond_1

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    const-string v1, "Removing duplicate item from "

    const/16 v16, 0x0

    const/4 v5, 0x0

    if-eqz v12, :cond_13

    move/from16 v6, v16

    move v9, v6

    .line 627
    :goto_0
    array-length v10, v12

    if-ge v6, v10, :cond_12

    .line 628
    aget-object v10, v12, v6

    if-nez v10, :cond_2

    move-object/from16 v22, v1

    move-object/from16 v18, v3

    move-object v12, v4

    move-wide v4, v7

    move/from16 v21, v9

    move-object/from16 v17, v13

    move-wide/from16 p7, v14

    move-object/from16 v1, p1

    move/from16 v3, p9

    move-object v13, v2

    move v15, v6

    goto/16 :goto_4

    .line 633
    :cond_2
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    move-wide/from16 p7, v14

    const-string v14, "Specific #"

    if-eqz v11, :cond_3

    .line 634
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_3
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v13, :cond_4

    .line 638
    invoke-virtual {v13, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v5

    goto :goto_1

    :cond_4
    move-object v15, v11

    .line 647
    :goto_1
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_7

    if-eqz p4, :cond_5

    .line 650
    aget-object v11, p4, v6

    :goto_2
    move-object/from16 v17, v2

    move-object v2, v10

    goto :goto_3

    :cond_5
    move-object v11, v5

    goto :goto_2

    .line 652
    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move-object/from16 v18, v3

    move-object v3, v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v23, v7

    move-object v8, v4

    move-wide/from16 v4, v23

    const-wide/16 v6, 0x0

    move/from16 v21, v9

    const/4 v9, 0x0

    move-object/from16 p5, v17

    move-object/from16 v17, v13

    move-object/from16 v13, p5

    move-object/from16 v22, v1

    move-object v12, v8

    move-object/from16 p5, v15

    move/from16 v15, v20

    move-object/from16 v1, p1

    move/from16 v8, p9

    .line 649
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    move v3, v8

    if-nez v2, :cond_6

    move-object/from16 v1, p1

    goto :goto_4

    .line 656
    :cond_6
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 659
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 660
    new-instance v11, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_5

    :cond_7
    move-object/from16 v22, v1

    move-object/from16 v18, v3

    move-object v12, v4

    move-wide v4, v7

    move/from16 v21, v9

    move-object/from16 v17, v13

    move-object/from16 p5, v15

    move-object/from16 v1, p1

    move/from16 v3, p9

    move-object v13, v2

    move v15, v6

    .line 663
    invoke-interface {v1, v11, v4, v5, v3}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_4
    move-object/from16 v8, v18

    move/from16 v9, v21

    move-object/from16 v1, v22

    goto/16 :goto_c

    :cond_8
    const/4 v6, 0x0

    .line 671
    :goto_5
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v9, v21

    :goto_6
    if-ge v9, v7, :cond_10

    move-object/from16 v8, v18

    .line 675
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 676
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 678
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 677
    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    move-object/from16 v14, p5

    goto :goto_8

    :cond_b
    :goto_7
    if-eqz p5, :cond_f

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v14, p5

    .line 679
    invoke-virtual {v0, v14}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 680
    :goto_8
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 681
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v0, :cond_c

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to specific "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    move/from16 v3, v21

    move-object/from16 v1, v22

    :goto_9
    if-nez v6, :cond_d

    move-object v6, v10

    :cond_d
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    :cond_e
    :goto_a
    move/from16 v3, v21

    move-object/from16 v1, v22

    goto :goto_b

    :cond_f
    move-object/from16 v14, p5

    goto :goto_a

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v22, v1

    move/from16 v21, v3

    move-object/from16 v18, v8

    move-object/from16 p5, v14

    move-object/from16 v1, p1

    move/from16 v3, p9

    goto/16 :goto_6

    :cond_10
    move-object/from16 v8, v18

    move/from16 v3, v21

    move-object/from16 v1, v22

    if-nez v6, :cond_11

    .line 696
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 697
    iput-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 699
    :cond_11
    invoke-interface {v8, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 700
    iput v15, v6, Landroid/content/pm/ResolveInfo;->specificIndex:I

    add-int/lit8 v9, v3, 0x1

    :goto_c
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v14, p7

    move-object v3, v8

    move-object v2, v13

    move-object/from16 v13, v17

    move-wide v7, v4

    move-object v4, v12

    const/4 v5, 0x0

    move-object/from16 v12, p3

    goto/16 :goto_0

    :cond_12
    move-object v12, v4

    move-wide v4, v7

    move-object v8, v3

    move v3, v9

    :goto_d
    move-object/from16 v17, v13

    move-wide/from16 p7, v14

    goto :goto_e

    :cond_13
    move-object v12, v4

    move-wide v4, v7

    move-object v8, v3

    move/from16 v9, v16

    goto :goto_d

    .line 707
    :goto_e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    :goto_f
    add-int/lit8 v2, v0, -0x1

    const-wide/16 v6, 0x0

    if-ge v9, v2, :cond_1c

    .line 709
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 710
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v3, :cond_14

    goto :goto_10

    .line 716
    :cond_14
    invoke-virtual {v3}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    if-nez v3, :cond_15

    :goto_10
    move-object/from16 v11, v17

    goto :goto_13

    .line 720
    :cond_15
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 721
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v11, v17

    if-eqz v17, :cond_17

    .line 722
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    :cond_16
    move-object/from16 v17, v11

    goto :goto_11

    :cond_17
    add-int/lit8 v13, v9, 0x1

    :goto_12
    if-ge v13, v0, :cond_16

    .line 728
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 729
    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v14, :cond_19

    invoke-virtual {v14, v10}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 730
    invoke-interface {v8, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 731
    sget-boolean v14, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v14, :cond_18

    .line 732
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " due to action "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_1a
    move-object/from16 v11, v17

    and-long v13, v4, p7

    cmp-long v3, v13, v6

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    .line 745
    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    :cond_1b
    :goto_13
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v11

    goto/16 :goto_f

    :cond_1c
    if-eqz p2, :cond_1e

    .line 751
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v16

    :goto_14
    if-ge v1, v0, :cond_1e

    .line 753
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 756
    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_15

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1e
    :goto_15
    and-long v0, v4, p7

    cmp-long v0, v0, v6

    if-nez v0, :cond_1f

    .line 766
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v16

    :goto_16
    if-ge v1, v0, :cond_1f

    .line 768
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 772
    :cond_1f
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-object v8
.end method

.method public queryIntentContentProvidersInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v7, p0

    move/from16 v4, p6

    .line 462
    iget-object v0, v7, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 463
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 465
    invoke-interface {v1, v5}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v8

    move v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v3, p6

    move-object v0, v1

    move-wide/from16 v1, p4

    .line 466
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    move v9, v4

    move v4, v3

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    .line 472
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v3

    move-object/from16 v3, p2

    :goto_0
    if-eqz v5, :cond_c

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 477
    invoke-interface {v0, v5, v1, v2, v4}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_b

    const-wide/32 v10, 0x800000

    and-long/2addr v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    move v10, v6

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    const-wide/32 v14, 0x1000000

    and-long/2addr v1, v14

    cmp-long v1, v1, v12

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_2

    :cond_3
    move v1, v11

    :goto_2
    if-eqz v8, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v11

    .line 490
    :goto_3
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 491
    iget-object v8, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_5

    move v12, v6

    goto :goto_4

    :cond_5
    move v12, v11

    .line 494
    :goto_4
    iget v13, v7, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v14, 0x100000

    and-int/2addr v13, v14

    if-nez v13, :cond_6

    move v13, v6

    goto :goto_5

    :cond_6
    move v13, v11

    :goto_5
    if-nez v5, :cond_9

    if-nez v10, :cond_7

    if-nez v2, :cond_7

    if-nez v12, :cond_8

    :cond_7
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    if-eqz v13, :cond_9

    :cond_8
    move v1, v6

    goto :goto_6

    :cond_9
    move v1, v11

    :goto_6
    if-nez v12, :cond_a

    if-nez v2, :cond_a

    .line 501
    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x3e8

    .line 503
    invoke-interface {v0, v2, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 502
    invoke-interface {v0, v2, v9, v4}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move v6, v11

    :goto_7
    if-nez v1, :cond_b

    if-nez v6, :cond_b

    .line 506
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 507
    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 508
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v3

    .line 514
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v0

    .line 515
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_e

    move v6, v4

    move-wide v4, v1

    move-object v2, v3

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    .line 517
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_d

    .line 520
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_d
    move-object/from16 v1, p1

    move/from16 v4, p6

    move-object v0, v7

    move-object v3, v8

    move v5, v9

    .line 522
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_e
    move-wide v4, v1

    move-object v2, v3

    move-object/from16 v1, p1

    .line 525
    invoke-interface {v1, v10}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 528
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v6

    move-object/from16 v3, p3

    move/from16 v7, p6

    .line 527
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    .line 530
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p6

    move-object v3, v8

    move v5, v9

    .line 532
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 535
    :cond_10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .locals 10

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 330
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v6, p6

    .line 342
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    if-eqz p9, :cond_1

    const/16 v1, 0x3e8

    move v2, v1

    goto :goto_0

    :cond_1
    move/from16 v2, p7

    :goto_0
    const/4 v5, 0x0

    .line 345
    const-string/jumbo v6, "query intent receivers"

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move v7, v2

    .line 347
    invoke-interface {v1, v7}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move v10, v7

    .line 350
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    move v4, v3

    move-wide v2, v5

    move v6, v9

    move v5, v10

    .line 348
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v2

    move v6, v4

    move/from16 v16, v5

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    .line 358
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object v7, v4

    move-object v4, v5

    move-object/from16 v5, p2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v7, p2

    .line 361
    :goto_1
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v17

    .line 362
    sget-object v18, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 364
    new-instance v9, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v12, 0x1

    move-object/from16 v11, p3

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v13, p9

    move-object v10, v7

    invoke-direct/range {v9 .. v15}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    .line 366
    iget-object v0, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v0, v9, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 367
    iput-object v1, v9, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    if-eqz v4, :cond_f

    .line 370
    invoke-interface {v1, v4, v2, v3, v6}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    const-wide/32 v10, 0x800000

    and-long/2addr v10, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    const/4 v11, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_3

    move v10, v14

    goto :goto_2

    :cond_3
    move v10, v11

    :goto_2
    const-wide/32 v19, 0x1000000

    and-long v19, v2, v19

    cmp-long v15, v19, v12

    if-eqz v15, :cond_4

    move v15, v14

    goto :goto_3

    :cond_4
    move v15, v11

    :goto_3
    const-wide/32 v19, 0x2000000

    and-long v2, v2, v19

    cmp-long v2, v2, v12

    if-eqz v2, :cond_5

    move v2, v14

    goto :goto_4

    :cond_5
    move v2, v11

    :goto_4
    if-eqz v8, :cond_6

    move v3, v14

    goto :goto_5

    :cond_6
    move v3, v11

    .line 385
    :goto_5
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 386
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_7

    move v12, v14

    goto :goto_6

    :cond_7
    move v12, v11

    .line 389
    :goto_6
    iget v13, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v17, 0x100000

    and-int v17, v13, v17

    if-eqz v17, :cond_8

    move/from16 v17, v14

    goto :goto_7

    :cond_8
    move/from16 v17, v11

    :goto_7
    if-eqz v17, :cond_9

    const/high16 v19, 0x200000

    and-int v13, v13, v19

    if-nez v13, :cond_9

    move v13, v14

    goto :goto_8

    :cond_9
    move v13, v11

    :goto_8
    if-eqz v17, :cond_a

    if-eqz v2, :cond_b

    if-nez v13, :cond_b

    :cond_a
    move v11, v14

    :cond_b
    if-nez v4, :cond_d

    if-nez v10, :cond_c

    if-nez v3, :cond_c

    if-nez v12, :cond_e

    :cond_c
    if-eqz v15, :cond_d

    if-eqz v3, :cond_d

    if-eqz v11, :cond_d

    goto :goto_9

    .line 401
    :cond_d
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 402
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {v9, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object/from16 v18, v0

    :cond_e
    :goto_9
    move-object v11, v5

    move-object v2, v7

    move-object/from16 v1, v18

    goto :goto_b

    .line 409
    :cond_f
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    move-object/from16 v0, v17

    move-wide v4, v2

    move-object v2, v7

    if-nez v10, :cond_10

    move-object/from16 v3, p3

    .line 412
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_10

    move-object/from16 v18, v7

    .line 417
    :cond_10
    invoke-interface {v1, v10}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 420
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v6

    move-object/from16 v3, p3

    move/from16 v7, p6

    .line 419
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryReceivers(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_a

    :cond_11
    move-object/from16 v0, v18

    .line 425
    :goto_a
    invoke-static {v9, v0}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object v1, v0

    :goto_b
    if-eqz v11, :cond_12

    .line 430
    iput-object v11, v9, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 431
    invoke-static {v9, v1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    :cond_12
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v6, p6

    move-object v7, v2

    move-object v2, v8

    move/from16 v4, v16

    .line 434
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;
    .locals 26

    move-object/from16 v0, p0

    const-wide/32 v11, 0x40000

    .line 113
    :try_start_0
    const-string/jumbo v1, "resolveIntent"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 115
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v4, p8

    invoke-virtual {v1, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v25, 0x0

    if-nez v1, :cond_0

    .line 149
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v25

    .line 116
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    .line 118
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v8

    move-object/from16 v2, p1

    move-wide/from16 v3, p4

    move/from16 v5, p8

    move/from16 v7, p9

    move/from16 v6, p10

    .line 117
    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v16

    .line 120
    const-string/jumbo v7, "resolve intent"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p8

    move v3, v1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 123
    const-string/jumbo v1, "queryIntentActivities"

    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v24, 0x1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-wide/from16 v18, p6

    move/from16 v22, p8

    move/from16 v23, p9

    move/from16 v20, p10

    move/from16 v21, p11

    .line 124
    invoke-interface/range {v13 .. v24}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v8

    move-wide/from16 v4, v16

    .line 127
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz p9, :cond_1

    .line 130
    new-instance v13, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v18, p10

    move/from16 v19, p11

    invoke-direct/range {v13 .. v19}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    .line 132
    iget-object v1, v0, Lcom/android/server/pm/ResolveIntentHelper;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v1, v13, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 133
    invoke-static {v13, v8}, Lcom/android/server/pm/SaferIntentUtils;->filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 137
    :cond_1
    :goto_0
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_2

    if-nez p9, :cond_2

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v6, p6

    move/from16 v9, p8

    move v10, v1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 140
    :goto_2
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ResolveIntentHelper;->chooseBestActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJLjava/util/List;IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const-wide/16 v1, 0x1

    and-long v1, p6, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 144
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 149
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v25

    :cond_3
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :goto_3
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 150
    throw v0
.end method

.method public resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;
    .locals 11

    .line 443
    iget-object p0, p0, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v3, p6

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p0

    const/4 v10, 0x0

    if-nez p0, :cond_0

    return-object v10

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p4

    move/from16 v4, p7

    .line 444
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    const/4 v8, 0x0

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v9, p9

    move-wide v3, v1

    move-object v1, p2

    move-object v2, p3

    .line 446
    invoke-interface/range {v0 .. v9}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 450
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_1

    const/4 p1, 0x0

    .line 453
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0

    :cond_1
    return-object v10
.end method
