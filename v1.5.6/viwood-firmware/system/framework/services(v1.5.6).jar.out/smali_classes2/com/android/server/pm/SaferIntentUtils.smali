.class public abstract Lcom/android/server/pm/SaferIntentUtils;
.super Ljava/lang/Object;
.source "SaferIntentUtils.java"


# static fields
.field public static final DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;


# direct methods
.method public static synthetic $r8$lambda$2zQV5KLKQgHJcUjooHmjqEuTakg(Landroid/util/Printer;Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;)V
    .locals 1

    .line 362
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, p0, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ET4wDE7Im4gCE7ebSKX-kIwikNI()Ljava/lang/Boolean;
    .locals 1

    .line 78
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic $r8$lambda$mGphpbTqJdvD1YYxyb0Qke4Jry4(I)[Ljava/lang/String;
    .locals 0

    .line 132
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    check-cast v0, Lcom/android/server/pm/Computer;

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_7

    .line 228
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 229
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    .line 235
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v3

    .line 238
    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 237
    invoke-static {v4, v3, v5}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 239
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 242
    :cond_4
    instance-of v4, v4, Landroid/content/IntentFilter;

    if-eqz v4, :cond_5

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    if-nez v4, :cond_6

    .line 247
    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public static enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 0

    .line 270
    invoke-static {p0, p1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatchingWithIntentMatchingFlags(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    return-void
.end method

.method public static enforceIntentFilterMatchingWithIntentMatchingFlags(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 281
    sget-object v2, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_c

    .line 284
    :cond_0
    iget v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    invoke-static {v2}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_c

    .line 286
    :cond_1
    iget-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    check-cast v2, Lcom/android/server/pm/Computer;

    .line 287
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v2

    .line 289
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    const/4 v4, 0x3

    const-string v5, "PackageManager"

    if-eqz v3, :cond_2

    .line 290
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 293
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_1
    if-ltz v6, :cond_15

    .line 294
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v8

    .line 297
    iget v9, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    iget-object v10, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v10}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    :goto_2
    move v9, v4

    goto/16 :goto_b

    .line 301
    :cond_4
    iget-boolean v9, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    invoke-static {v8, v2, v9}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 303
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    .line 311
    :cond_5
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntentMatchingFlags()I

    move-result v9

    if-eqz v9, :cond_7

    and-int/lit8 v11, v9, 0x1

    if-eq v11, v7, :cond_7

    and-int/lit8 v11, v9, 0x2

    if-nez v11, :cond_6

    goto :goto_3

    :cond_6
    move v11, v7

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v11, 0x0

    :goto_4
    and-int/lit8 v9, v9, 0x4

    const/4 v12, 0x4

    if-ne v9, v12, :cond_8

    move v9, v7

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    .line 325
    :goto_5
    iget-object v12, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_9

    move v12, v7

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    .line 328
    :goto_6
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_b

    .line 329
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v15

    .line 330
    iget-object v10, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    invoke-static {v15, v10, v4}, Lcom/android/server/IntentResolver;->intentMatchesFilter(Landroid/content/IntentFilter;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v7

    goto :goto_8

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x3

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_8
    if-eqz v11, :cond_e

    if-eqz v12, :cond_c

    if-eqz v9, :cond_d

    :cond_c
    if-nez v4, :cond_e

    :cond_d
    move v10, v7

    goto :goto_9

    :cond_e
    const/4 v10, 0x0

    :goto_9
    if-eqz v12, :cond_f

    .line 345
    invoke-virtual {v0, v7, v10}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    const/4 v9, 0x3

    goto :goto_a

    :cond_f
    const/4 v9, 0x3

    if-nez v4, :cond_10

    .line 348
    invoke-virtual {v0, v9, v10}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_10
    :goto_a
    if-nez v12, :cond_11

    if-nez v4, :cond_12

    .line 354
    :cond_11
    iget-object v4, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    :cond_12
    if-eqz v10, :cond_14

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent does not match component\'s intent filter: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Access blocked: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    if-eqz v4, :cond_13

    .line 361
    const-string v4, "Component intent filters:"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-interface {v8}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    move-result-object v4

    new-instance v8, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;

    invoke-direct {v8, v3}, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;-><init>(Landroid/util/Printer;)V

    invoke-interface {v4, v8}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 363
    const-string v4, "-----------------------------"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_13
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_14
    :goto_b
    add-int/lit8 v6, v6, -0x1

    move v4, v9

    goto/16 :goto_1

    :cond_15
    :goto_c
    return-void
.end method

.method public static filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_6

    .line 469
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 470
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 471
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 472
    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-wide/32 v0, 0xdabca61

    .line 477
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    move-result v0

    .line 480
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_5

    .line 481
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 482
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 483
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v4, :cond_2

    goto :goto_1

    .line 486
    :cond_1
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 487
    iget-boolean v4, v4, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    .line 497
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    const/4 p1, 0x2

    .line 501
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .locals 1

    .line 111
    instance-of v0, p0, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p0

    return-object p0

    .line 117
    :cond_1
    instance-of p2, p0, Landroid/content/pm/ServiceInfo;

    if-eqz p2, :cond_2

    .line 118
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object p0

    return-object p0

    .line 121
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported component type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 11

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 133
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 134
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 139
    :goto_3
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0x23d

    move v2, p0

    move v3, p1

    move-object v8, p4

    move/from16 v10, p5

    .line 135
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 146
    invoke-virtual {p1, p2, p0, p3}, Landroid/app/ActivityManagerInternal;->triggerUnsafeIntentStrictMode(IILandroid/content/Intent;)V

    return-void
.end method
