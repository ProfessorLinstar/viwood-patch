.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;
.super Landroid/media/tv/ad/ITvAdManager$Stub;
.source "TvInteractiveAppManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    return-void
.end method


# virtual methods
.method public createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 4

    .line 1427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1428
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createMediaView"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1432
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1434
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    .line 1435
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1437
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in createMediaView"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1441
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1439
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1441
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    throw p0
.end method

.method public createSession(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 986
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string v3, "createSession"

    invoke-static {v2, v10, v9, v1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v11

    .line 988
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 991
    :try_start_0
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 992
    :try_start_1
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendAdSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 996
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1042
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    move-object/from16 v2, p2

    .line 998
    :try_start_2
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v16

    .line 999
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    if-nez v17, :cond_1

    .line 1001
    const-string v1, "TvInteractiveAppManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find state for serviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendAdSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1003
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1042
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1005
    :cond_1
    :try_start_3
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1006
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-nez v1, :cond_2

    .line 1008
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1009
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1008
    invoke-static {v1, v2, v3, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1010
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/content/ComponentName;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v4, p2

    move v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V

    .line 1012
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v18, v1

    .line 1015
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmReconnecting(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1016
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendAdSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1017
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1042
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1021
    :cond_3
    :try_start_4
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 1022
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/media/tv/ad/ITvAdClient;IIIILcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V

    .line 1027
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdSessionStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1033
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;

    move-result-object v2

    invoke-static {v1, v2, v3, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1035
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v3, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    goto :goto_0

    .line 1038
    :cond_4
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmComponentName(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateAdServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 1040
    :cond_5
    :goto_0
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1042
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1040
    :goto_1
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 1042
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1043
    throw v0
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .locals 5

    .line 1093
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1094
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "dispatchSurfaceChanged"

    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p5

    .line 1096
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1098
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1100
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1102
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4}, Landroid/media/tv/ad/ITvAdSession;->dispatchSurfaceChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1105
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in dispatchSurfaceChanged"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1109
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1107
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1109
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    throw p0
.end method

.method public getTvAdServiceList(I)Ljava/util/List;
    .locals 6

    .line 925
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getTvAdServiceList"

    .line 925
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 929
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 930
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmGetAdServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 931
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mbuildTvAdServiceListLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I[Ljava/lang/String;)V

    .line 932
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fputmGetAdServiceListCalled(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 934
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    .line 935
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 936
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 937
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/media/tv/ad/TvAdServiceInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 939
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 940
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 942
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    throw p0
.end method

.method public notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5

    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1320
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1321
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "notifyError"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1325
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1327
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1328
    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1329
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1331
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyError"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1335
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1333
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1335
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1336
    throw p0
.end method

.method public notifyTvInputSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5

    .line 1370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1371
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1372
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyTvInputSessionData"

    invoke-static {v2, v1, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1376
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1378
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1379
    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1380
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1382
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyTvInputSessionData"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1386
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1384
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1386
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1387
    throw p0
.end method

.method public notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    .locals 5

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1345
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1346
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "notifyTvMessage"

    invoke-static {v2, v1, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1350
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1352
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 1353
    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1354
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyTvMessage(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1356
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in notifyTvMessage"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1360
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1358
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1360
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1361
    throw p0
.end method

.method public registerCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    .locals 4

    .line 1392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1394
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const-string/jumbo v3, "registerCallback"

    invoke-static {v2, v0, v1, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1398
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1399
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    .line 1400
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1401
    const-string p0, "TvInteractiveAppManagerService"

    const-string p1, "client process has already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1403
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1403
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1406
    throw p0
.end method

.method public relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 4

    .line 1447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1448
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "relayoutMediaView"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1452
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1454
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    .line 1455
    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->relayoutMediaView(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1457
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in relayoutMediaView"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1459
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1461
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1459
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1461
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1462
    throw p0
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .locals 4

    .line 1051
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1052
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "releaseSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1054
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1056
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1057
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 1058
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1060
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 1058
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1060
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1061
    throw p0
.end method

.method public removeMediaView(Landroid/os/IBinder;I)V
    .locals 4

    .line 1467
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1468
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "removeMediaView"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1472
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1474
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    .line 1475
    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->removeMediaView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1477
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in removeMediaView"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1481
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1479
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1481
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1482
    throw p0
.end method

.method public resetAdService(Landroid/os/IBinder;I)V
    .locals 5

    .line 1168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1169
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "resetAdService"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1174
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1176
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1178
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->resetAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1180
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in reset"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1182
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1184
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1182
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1184
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1185
    throw p0
.end method

.method public sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 10

    .line 948
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "sendAppLinkCommand"

    .line 948
    invoke-static {v0, v1, v2, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result v8

    .line 950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 952
    :try_start_0
    iget-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 953
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v0

    .line 954
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    if-nez v3, :cond_0

    .line 956
    const-string p0, "TvInteractiveAppManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to sendAppLinkCommand - unknown service id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 977
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 960
    :cond_0
    :try_start_2
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->-$$Nest$fgetmInfo(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;)Landroid/media/tv/ad/TvAdServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 961
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    if-nez v3, :cond_1

    .line 963
    new-instance v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    const/4 v9, 0x0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/tv/interactive/TvInteractiveAppManagerService-IA;)V

    .line 964
    invoke-static {v4, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Landroid/os/Bundle;)V

    .line 965
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdServiceStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, v6, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateAdServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 967
    :cond_1
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 968
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$fgetmService(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;)Landroid/media/tv/ad/ITvAdService;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    goto :goto_0

    .line 970
    :cond_2
    invoke-static {v3, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->-$$Nest$maddPendingAppLinkCommand(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Landroid/os/Bundle;)V

    .line 971
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, v6, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mupdateAdServiceConnectionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 973
    :goto_0
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 977
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 973
    :goto_1
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 975
    :try_start_5
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendAppLinkCommand"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 977
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    throw p0
.end method

.method public sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 5

    .line 1218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1219
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentChannelUri"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1224
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1226
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1228
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentChannelUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1230
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendCurrentChannelUri"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1232
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1232
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1234
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    throw p0
.end method

.method public sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5

    .line 1268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1269
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentTvInputId"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1274
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1276
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1278
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentTvInputId(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1280
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendCurrentTvInputId"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1284
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1282
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1284
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1285
    throw p0
.end method

.method public sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 5

    .line 1193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1194
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendCurrentVideoBounds"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1199
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1201
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1203
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1205
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendCurrentVideoBounds"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1207
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1209
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1207
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1209
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1210
    throw p0
.end method

.method public sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    .locals 5

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1295
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendSigningResult"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1300
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1302
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1304
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->sendSigningResult(Ljava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1306
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendSigningResult"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1308
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1310
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1308
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1310
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    throw p0
.end method

.method public sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    .locals 5

    .line 1243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1244
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendTrackInfoList"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1249
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1251
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1253
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendTrackInfoList(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1255
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in sendTrackInfoList"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1257
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1259
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1257
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1259
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    throw p0
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 5

    .line 1066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1067
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setSurface"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1070
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1072
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1074
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1076
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1078
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p3, "error in setSurface"

    invoke-static {p1, p3, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_0

    .line 1084
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1086
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1080
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz p2, :cond_1

    .line 1084
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1086
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    throw p0
.end method

.method public startAdService(Landroid/os/IBinder;I)V
    .locals 5

    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1119
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "startAdService"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1124
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1126
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1128
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->startAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1130
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in start"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1134
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1132
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1134
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1135
    throw p0
.end method

.method public stopAdService(Landroid/os/IBinder;I)V
    .locals 5

    .line 1143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1144
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "stopAdService"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1149
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1151
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    move-result-object p1

    .line 1153
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->stopAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1155
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    const-string p2, "error in stop"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1159
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1157
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 1159
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    throw p0
.end method

.method public unregisterCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    .locals 4

    .line 1411
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1412
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "unregisterCallback"

    .line 1411
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1415
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1416
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object p0

    .line 1417
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmAdCallbacks(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1418
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 1418
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1421
    throw p0
.end method
