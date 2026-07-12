.class public final Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;
.super Landroid/permission/IPermissionChecker$Stub;
.source "PermissionManagerService.java"


# static fields
.field public static final sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public static bridge synthetic -$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1003
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1006
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1011
    invoke-direct {p0}, Landroid/permission/IPermissionChecker$Stub;-><init>()V

    .line 1012
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    .line 1013
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 1014
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method

.method public static checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 1188
    invoke-static {v14}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x2

    if-gez v2, :cond_0

    .line 1190
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Appop permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with no app op defined!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v3, 0x0

    move-object v4, v15

    :goto_0
    const/4 v5, 0x1

    const/16 v16, 0x0

    if-nez p6, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v7, v16

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v5

    .line 1200
    :goto_2
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-eqz p6, :cond_3

    .line 1204
    invoke-virtual {v4, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v3, :cond_4

    .line 1205
    invoke-virtual {v4, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    return v1

    :cond_4
    if-eqz p6, :cond_5

    .line 1213
    invoke-virtual {v4, v15}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    .line 1214
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-nez v6, :cond_5

    move v9, v5

    goto :goto_3

    :cond_5
    move/from16 v9, v16

    :goto_3
    if-nez v9, :cond_7

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v8, v16

    :goto_4
    move v6, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v8, v5

    goto :goto_4

    .line 1217
    :goto_6
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v10, v6

    const/4 v6, 0x0

    move v11, v10

    const/4 v10, -0x1

    move/from16 v17, v11

    const/4 v11, 0x0

    move-object v15, v3

    move-object v3, v4

    move v14, v5

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    if-eq v1, v14, :cond_f

    const/4 v10, 0x2

    if-eq v1, v10, :cond_e

    const/4 v3, 0x3

    if-eq v1, v3, :cond_9

    :cond_8
    move-object/from16 v1, p1

    move-object/from16 v14, p2

    goto :goto_7

    :cond_9
    if-nez v7, :cond_a

    .line 1230
    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v1

    if-nez v1, :cond_a

    return v10

    :cond_a
    if-eqz v15, :cond_8

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    .line 1234
    invoke-static {v0, v1, v14, v15}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v3

    if-nez v3, :cond_b

    return v10

    :cond_b
    :goto_7
    if-eqz v15, :cond_d

    .line 1241
    invoke-virtual {v15}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    move-object v3, v15

    move-object v4, v3

    const/4 v1, 0x2

    move-object/from16 v15, p3

    goto/16 :goto_0

    :cond_d
    :goto_8
    return v16

    :cond_e
    move/from16 v17, v10

    goto :goto_9

    :cond_f
    const/16 v17, 0x2

    :goto_9
    return v17
.end method

.method public static checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v14, 0x2

    if-ltz p1, :cond_10

    .line 1459
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_a

    :cond_0
    move/from16 v4, p6

    .line 1464
    invoke-static {v4, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v13

    const/4 v2, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eq v13, v2, :cond_1

    move/from16 v17, v15

    goto :goto_0

    :cond_1
    move/from16 v17, v16

    :goto_0
    if-eqz v17, :cond_3

    .line 1472
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    move-object/from16 v3, p2

    invoke-static {v0, v3, v2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v18, v16

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v18, v15

    :goto_2
    const/4 v2, 0x0

    move-object v3, v1

    :goto_3
    if-eqz v2, :cond_4

    move v7, v15

    goto :goto_4

    :cond_4
    move/from16 v7, v16

    .line 1477
    :goto_4
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1481
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    return v14

    :cond_5
    if-nez v8, :cond_6

    move v5, v15

    goto :goto_5

    :cond_6
    move/from16 v5, v16

    :goto_5
    if-eqz v18, :cond_9

    .line 1488
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    if-eqz v8, :cond_8

    .line 1489
    invoke-virtual {v8, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v6, v15

    goto :goto_6

    :cond_9
    move/from16 v6, v16

    :goto_6
    if-nez v7, :cond_a

    if-eqz v17, :cond_a

    move-object v2, v3

    const/4 v3, 0x0

    .line 1492
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v3

    move-object v9, v2

    move v11, v3

    goto :goto_7

    :cond_a
    move-object v9, v3

    move/from16 v11, v16

    :goto_7
    if-eqz v17, :cond_b

    const/4 v3, 0x0

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object v2, v8

    .line 1495
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v3

    move-object/from16 v19, v2

    move v12, v3

    goto :goto_8

    :cond_b
    move-object/from16 v19, v8

    move/from16 v12, v16

    .line 1499
    :goto_8
    invoke-virtual {v9}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object v2, v9

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object/from16 v4, p4

    move/from16 v6, p6

    move-object v3, v2

    move v8, v5

    move/from16 v2, p1

    move/from16 v5, p5

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    if-eq v1, v15, :cond_f

    if-eq v1, v14, :cond_e

    if-eqz v19, :cond_d

    .line 1513
    invoke-virtual/range {v19 .. v19}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object/from16 v2, v19

    move-object v3, v2

    goto/16 :goto_3

    :cond_d
    :goto_9
    return v16

    :cond_e
    return v14

    :cond_f
    return v15

    :cond_10
    :goto_a
    return v14
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 10

    .line 1144
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v1, :cond_1

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v8}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1148
    const-string v3, "android"

    iget-object v4, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1149
    invoke-static {p0, p2}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1152
    :cond_0
    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v9, v1

    goto :goto_0

    :catch_0
    return v7

    .line 1159
    :goto_0
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->isAppOp()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    .line 1160
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkAppOpPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result v0

    return v0

    .line 1163
    :cond_2
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_3
    if-nez p7, :cond_4

    .line 1169
    invoke-static/range {p0 .. p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    if-nez v0, :cond_4

    return v7

    .line 1174
    :cond_4
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1176
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    .line 1175
    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result v0

    return v0

    :cond_5
    return v8
.end method

.method public static checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z
    .locals 6

    .line 1378
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1379
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v1

    .line 1380
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 1381
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object p0

    :goto_0
    const/4 v1, -0x1

    .line 1382
    invoke-virtual {p0, p2, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    .line 1391
    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "android.permission.RECORD_AUDIO"

    .line 1392
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.permission.CAPTURE_AUDIO_OUTPUT"

    .line 1393
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1395
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1397
    invoke-interface {p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result p1

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    move v2, v3

    .line 1399
    :cond_4
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object p1

    if-eqz v2, :cond_5

    .line 1400
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.permission.RENOUNCE_PERMISSIONS"

    .line 1401
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_5

    return v4

    :cond_5
    return v2
.end method

.method public static checkRuntimePermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    move/from16 v4, p6

    .line 1255
    invoke-static {v15}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 1257
    invoke-static {v4, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->getAttributionChainId(ZLandroid/content/AttributionSource;)I

    move-result v13

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v13, v2, :cond_0

    move/from16 v16, v8

    goto :goto_0

    :cond_0
    move/from16 v16, v9

    :goto_0
    if-eqz v16, :cond_2

    .line 1264
    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {v0, v14, v2, v1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v17, v9

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v17, v8

    :goto_2
    const/4 v2, 0x0

    move-object v3, v1

    move-object/from16 v18, v2

    :goto_3
    if-nez p7, :cond_4

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    move v10, v7

    move v7, v9

    goto :goto_5

    :cond_4
    :goto_4
    move v10, v7

    move v7, v8

    .line 1269
    :goto_5
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v11

    const/4 v12, 0x2

    if-eqz p7, :cond_5

    .line 1273
    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    if-eqz v11, :cond_6

    .line 1274
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    return v12

    :cond_6
    :goto_6
    if-nez v7, :cond_7

    .line 1279
    invoke-static {v0, v14, v15, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-nez v2, :cond_7

    return v12

    :cond_7
    if-eqz v11, :cond_8

    .line 1284
    invoke-static {v0, v14, v15, v11}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v2

    if-nez v2, :cond_8

    return v12

    :cond_8
    if-gez v10, :cond_b

    .line 1291
    sget-object v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sPlatformPermissions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v15}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 1292
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 1293
    invoke-virtual {v2, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1294
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Platform runtime permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with no app op defined!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v11, :cond_a

    return v9

    :cond_a
    move v7, v10

    move-object v2, v11

    move-object v3, v2

    goto :goto_3

    :cond_b
    if-eqz p7, :cond_c

    .line 1308
    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v11, :cond_c

    .line 1309
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez v2, :cond_c

    move/from16 v19, v9

    move v9, v8

    goto :goto_7

    :cond_c
    move/from16 v19, v9

    :goto_7
    if-nez v9, :cond_e

    if-nez v11, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v5, v19

    goto :goto_9

    :cond_e
    :goto_8
    move v5, v8

    :goto_9
    if-eqz v17, :cond_11

    .line 1312
    invoke-virtual {v3, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v3, v1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    if-eqz v11, :cond_10

    .line 1313
    invoke-virtual {v11, v0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    move v6, v8

    goto :goto_a

    :cond_11
    move/from16 v6, v19

    :goto_a
    if-nez v7, :cond_12

    if-eqz v16, :cond_12

    move-object v2, v3

    move/from16 v3, p7

    .line 1316
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v20

    move-object/from16 v21, v2

    goto :goto_b

    :cond_12
    move-object/from16 v21, v3

    move/from16 v20, v19

    :goto_b
    if-eqz v16, :cond_13

    move-object/from16 v1, p3

    move/from16 v4, p6

    move/from16 v3, p7

    move-object v2, v11

    .line 1319
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I

    move-result v6

    move-object/from16 v22, v2

    goto :goto_c

    :cond_13
    move-object/from16 v22, v11

    move/from16 v6, v19

    .line 1323
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object/from16 v4, p4

    move/from16 v14, p7

    move v8, v5

    move v12, v6

    move v2, v10

    move/from16 v15, v19

    move/from16 v11, v20

    move-object/from16 v3, v21

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p8

    invoke-static/range {v0 .. v13}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I

    move-result v1

    move v10, v2

    move-object v2, v3

    if-eqz p6, :cond_15

    if-eqz v1, :cond_15

    if-eqz v18, :cond_15

    .line 1335
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v3

    .line 1336
    iget-object v4, v3, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v5, v4

    if-lez v5, :cond_14

    .line 1337
    aget-object v4, v4, v15

    new-array v5, v15, [Landroid/content/AttributionSourceState;

    iput-object v5, v4, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_14
    move/from16 v4, p8

    .line 1339
    invoke-static {v0, v4, v3, v14}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_15
    move/from16 v4, p8

    goto :goto_d

    :goto_e
    if-eq v1, v3, :cond_1b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_19

    if-eqz p6, :cond_16

    .line 1360
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    invoke-direct {v1, v0, v10, v2, v14}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;-><init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 1362
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    if-eqz v22, :cond_18

    .line 1365
    invoke-virtual/range {v22 .. v22}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_17
    move-object/from16 v14, p1

    move-object/from16 v1, p3

    move/from16 v4, p6

    move-object/from16 v18, v2

    move v7, v10

    move v9, v15

    move-object/from16 v2, v22

    move-object v3, v2

    const/4 v8, 0x1

    move-object/from16 v15, p2

    goto/16 :goto_3

    :cond_18
    :goto_f
    return v15

    .line 1346
    :cond_19
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    move-object/from16 v15, p2

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1347
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLUETOOTH_CONNECT permission hard denied as op mode is MODE_ERRORED. Permission check was requested for: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and op transaction was invoked for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return v3

    :cond_1b
    move/from16 v19, v3

    return v19
.end method

.method public static finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V
    .locals 7

    .line 1052
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1053
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto/16 :goto_8

    .line 1059
    :cond_0
    new-instance v1, Landroid/content/AttributionSource;

    invoke-direct {v1, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    .line 1065
    :goto_2
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    if-eqz p3, :cond_3

    .line 1069
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-eq v6, p2, :cond_4

    :cond_3
    if-eqz v5, :cond_4

    .line 1070
    invoke-virtual {v1, p0}, Landroid/content/AttributionSource;->isTrusted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_8

    :cond_4
    if-eqz p3, :cond_5

    .line 1078
    invoke-virtual {v1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v6

    if-ne v6, p2, :cond_5

    if-eqz v5, :cond_5

    .line 1079
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v4

    :goto_3
    if-nez v6, :cond_7

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :cond_7
    :goto_4
    if-nez v6, :cond_8

    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v4, v5

    :goto_5
    if-eqz v3, :cond_a

    .line 1086
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_8

    .line 1091
    :cond_9
    invoke-virtual {v4, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 1093
    iget-object v3, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v3, p1, v2}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    goto :goto_6

    .line 1097
    :cond_a
    invoke-static {p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    .line 1098
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_8

    .line 1101
    :cond_b
    iget-object v4, p2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 1102
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v6

    .line 1101
    invoke-virtual {v0, v4, v6, v3, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    .line 1105
    :goto_6
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 1106
    invoke-virtual {v1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz v1, :cond_c

    .line 1108
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_c
    if-eqz v5, :cond_e

    .line 1111
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    move-object v1, v5

    move-object v2, v1

    goto/16 :goto_0

    :cond_e
    :goto_7
    if-eqz v5, :cond_f

    .line 1113
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetsRunningAttributionSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;

    if-eqz p0, :cond_f

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    :cond_f
    :goto_8
    return-void
.end method

.method public static getAttributionChainId(ZLandroid/content/AttributionSource;)I
    .locals 0

    if-eqz p1, :cond_2

    .line 1706
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 1709
    :cond_0
    sget-object p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->sAttributionChainIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1713
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1714
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static performOpTransaction(Landroid/content/Context;Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZZZZZIIII)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v2, p10

    .line 1533
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    if-nez p9, :cond_0

    move-object v5, v3

    goto :goto_0

    .line 1535
    :cond_0
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    :goto_0
    const/4 v7, 0x2

    if-nez p5, :cond_5

    .line 1537
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v7

    .line 1543
    :cond_1
    invoke-virtual {v5, v2}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz p7, :cond_2

    if-nez p9, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    .line 1555
    :cond_2
    invoke-virtual {v4, v1, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v6

    .line 1557
    :goto_1
    invoke-virtual {v5}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-nez p8, :cond_4

    if-nez v6, :cond_4

    if-eqz v2, :cond_4

    .line 1559
    invoke-static {v0, v2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v7

    .line 1564
    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1565
    invoke-virtual {v4, v1, v0}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(ILandroid/content/AttributionSource;)I

    move-result v0

    return v0

    :cond_4
    return v6

    .line 1568
    :cond_5
    const-string v9, " with source "

    const-string v10, "Security exception for op "

    const-string v12, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v13, " while not having "

    const-string v14, " protecting data with platform defined runtime permission "

    const-string v15, "Datasource "

    const/4 v8, -0x1

    const-string v11, ", "

    move/from16 v16, v7

    const-string v7, ":"

    if-eqz p6, :cond_b

    move-object/from16 v17, v7

    .line 1569
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v7

    .line 1571
    invoke-virtual {v7}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    return v16

    :cond_6
    if-eq v2, v8, :cond_8

    if-eq v2, v1, :cond_8

    .line 1588
    invoke-virtual {v4, v1, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v6

    move/from16 v0, v16

    if-ne v6, v0, :cond_7

    return v6

    :cond_7
    move v0, v6

    move v6, v2

    goto :goto_2

    :cond_8
    move v6, v1

    const/4 v0, 0x0

    :goto_2
    if-eqz p8, :cond_9

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    move/from16 v10, p11

    move/from16 v11, p13

    .line 1596
    :try_start_0
    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLjava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v0

    goto :goto_3

    .line 1601
    :catch_0
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1601
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    move/from16 v5, p7

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    move v12, v0

    move-object v0, v4

    move-object/from16 v4, p4

    .line 1605
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v1

    goto :goto_3

    :cond_9
    move-object/from16 v1, p1

    move/from16 v5, p7

    move/from16 v8, p13

    move v12, v0

    move-object v0, v4

    move v2, v6

    move-object v3, v7

    move-object/from16 v13, v17

    move-object/from16 v4, p4

    move/from16 v6, p11

    move/from16 v7, p12

    .line 1611
    :try_start_1
    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1628
    :goto_3
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 1616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1622
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1625
    :cond_a
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move-object v6, v4

    move-object/from16 v18, v7

    move-object/from16 v4, p4

    move v7, v2

    move/from16 v2, p7

    .line 1630
    invoke-static {v0, v5}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 1632
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    const/4 v5, 0x2

    return v5

    :cond_c
    const/4 v5, 0x2

    if-eq v7, v8, :cond_d

    if-eq v7, v1, :cond_d

    .line 1644
    invoke-virtual {v6, v1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(ILandroid/content/AttributionSource;)I

    move-result v8

    if-ne v8, v5, :cond_e

    return v8

    :cond_d
    move v7, v1

    const/4 v8, 0x0

    :cond_e
    if-eqz p8, :cond_f

    .line 1657
    :try_start_2
    invoke-virtual {v6, v7, v0, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1660
    :catch_2
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1660
    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-virtual {v6, v7, v3, v4, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v2

    goto :goto_4

    .line 1669
    :cond_f
    :try_start_3
    invoke-virtual {v6, v7, v0, v4, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1685
    :goto_4
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_11

    const/4 v5, 0x2

    if-ne v2, v5, :cond_11

    .line 1688
    const-string v3, " returned MODE_ERRORED"

    const-string v4, " and op "

    if-ne v2, v8, :cond_10

    .line 1689
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BLUETOOTH_CONNECT permission hard denied as checkOp for resolvedAttributionSource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1694
    :cond_10
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BLUETOOTH_CONNECT permission hard denied as noteOp for resolvedAttributionSource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_5
    return v2

    :catch_3
    move-exception v0

    .line 1673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v18

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1678
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1679
    invoke-virtual {v3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    .line 1680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1682
    :cond_12
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_2
    if-nez p2, :cond_6

    .line 1437
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    or-int/lit8 p0, p3, 0x1

    return p0

    :cond_3
    if-eqz p4, :cond_4

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_4
    if-eqz p2, :cond_5

    .line 1443
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    or-int/lit8 p0, p3, 0x1

    return p0

    .line 1445
    :cond_5
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object p4

    if-nez p4, :cond_6

    or-int/lit8 p0, p3, 0x4

    return p0

    :cond_6
    if-eqz p2, :cond_7

    .line 1449
    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    or-int/lit8 p0, p3, 0x2

    return p0

    :cond_8
    :goto_1
    return v0
.end method

.method public static resolveAttributionSource(Landroid/content/Context;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 1

    .line 1738
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1741
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method public static resolvePackageName(Landroid/content/Context;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 1

    .line 1721
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1724
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1725
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    .line 1724
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 1729
    aget-object p0, p0, p1

    return-object p0

    .line 1732
    :cond_1
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    .line 1733
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1732
    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->resolvePackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveProxiedAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1420
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method

.method public static resolveProxyAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZ)I
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1412
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->resolveAttributionFlags(Landroid/content/AttributionSource;Landroid/content/AttributionSource;ZZZZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 7

    .line 1128
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    move v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkOp(Landroid/content/Context;ILcom/android/server/pm/permission/PermissionManagerServiceInternal;Landroid/content/AttributionSource;Ljava/lang/String;ZZ)I

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    const/4 p3, 0x0

    .line 1133
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_0
    return p1
.end method

.method public checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 9

    .line 1023
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1024
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1025
    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 1027
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mPermissionManagerServiceInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->checkPermission(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;ZZZI)I

    move-result p2

    if-eqz p5, :cond_1

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, -0x1

    if-ne v8, p3, :cond_0

    .line 1034
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    .line 1035
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p3

    .line 1034
    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    return p2

    .line 1037
    :cond_0
    invoke-virtual {v3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p1

    invoke-virtual {p0, v8, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V

    :cond_1
    return p2
.end method

.method public finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 0

    .line 1046
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->finishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    return-void
.end method
