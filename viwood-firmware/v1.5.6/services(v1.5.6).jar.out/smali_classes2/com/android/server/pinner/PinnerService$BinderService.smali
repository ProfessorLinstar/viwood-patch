.class public final Lcom/android/server/pinner/PinnerService$BinderService;
.super Landroid/app/pinner/IPinnerService$Stub;
.source "PinnerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-direct {p0}, Landroid/app/pinner/IPinnerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1297
    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v2}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmContext(Lcom/android/server/pinner/PinnerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "PinnerService"

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1299
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1300
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1301
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1303
    const-string v5, "Pinner Configs:\n"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1304
    const-string v5, "   Total Pinner quota: %d%% of total device memory\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v7}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredMaxPinnedMemoryPercentage(Lcom/android/server/pinner/PinnerService;)I

    move-result v7

    .line 1305
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 1304
    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1306
    const-string v5, "   Maximum Pinner quota: %d bytes (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v7}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredMaxPinnedMemory(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v8}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredMaxPinnedMemory(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    .line 1307
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 1306
    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1308
    const-string v5, "   Max Home App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v7}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v7

    .line 1309
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v8}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredHomePinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 1308
    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1310
    const-string v5, "   Max Assistant App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v7}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredAssistantPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v7

    .line 1311
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v8}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredAssistantPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 1310
    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1312
    const-string v5, "   Max Camera App Pin Bytes (without deps): %d (%.2f MB)\n"

    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v7}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredCameraPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v7

    .line 1314
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v8}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmConfiguredCameraPinBytes(Lcom/android/server/pinner/PinnerService;)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 1312
    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1315
    const-string v5, "\nPinned Files:\n"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1316
    iget-object v5, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    monitor-enter v5

    .line 1321
    :try_start_0
    iget-object v7, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v7}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v12, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1322
    iget-object v6, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v6}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pinner/PinnerService$PinnedApp;

    const-wide/16 v16, 0x0

    .line 1323
    iget-object v8, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v8, v15}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetNameForKey(Lcom/android/server/pinner/PinnerService;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1324
    const-string v8, " uid="

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    iget v8, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->uid:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1326
    const-string v8, " active="

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget-boolean v8, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->active:Z

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 1329
    iget-object v8, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1330
    iget-object v6, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pinner/PinnedFile;

    iget-object v6, v6, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_a

    .line 1332
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1335
    iget-object v6, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v6}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedApps(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pinner/PinnerService$PinnedApp;

    iget-object v6, v6, Lcom/android/server/pinner/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-wide/from16 v18, v10

    move-wide/from16 v10, v16

    move-wide v14, v10

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_3

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v9, v9, 0x1

    move-object/from16 p3, v6

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/server/pinner/PinnedFile;

    move-object/from16 v20, v7

    .line 1336
    const-string v7, "  "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1337
    const-string v7, "%s pinned:%d bytes (%.2f MB) pinlist:%b\n"

    move/from16 v21, v8

    iget-object v8, v6, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move-wide/from16 v22, v12

    iget-wide v12, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1338
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    iget-wide v3, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v3, v3

    div-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-boolean v4, v6, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v8, v12, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 1337
    invoke-virtual {v1, v7, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1339
    iget-wide v3, v6, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long v12, v22, v3

    add-long/2addr v14, v3

    .line 1341
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1342
    iget-object v3, v6, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/pinner/PinnedFile;

    .line 1343
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    const-string v8, "%s pinned:%d bytes (%.2f MB) pinlist:%b (Dependency)\n"

    move-object/from16 v22, v3

    iget-object v3, v7, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v23, v4

    move-object/from16 v26, v5

    :try_start_1
    iget-wide v4, v7, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1345
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v27, v6

    iget-wide v5, v7, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v5, v5

    div-double v5, v5, v18

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-boolean v6, v7, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    .line 1346
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 1344
    invoke-virtual {v1, v8, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1347
    iget-wide v3, v7, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v12, v3

    add-long/2addr v10, v3

    .line 1349
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v22

    move/from16 v4, v23

    move-object/from16 v5, v26

    move/from16 v6, v27

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :cond_2
    move-object/from16 v6, p3

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    goto/16 :goto_2

    :cond_3
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v20, v7

    move-wide/from16 v22, v12

    add-long v3, v14, v10

    .line 1353
    const-string v5, "Total Pinned = %d (%.2f MB) [App=%d (%.2f MB), Dependencies=%d (%.2f MB)]\n\n"

    .line 1355
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    long-to-double v3, v3

    div-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    .line 1356
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    long-to-double v3, v14

    div-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    .line 1357
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    long-to-double v3, v10

    div-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    filled-new-array/range {v27 .. v32}, [Ljava/lang/Object;

    move-result-object v3

    .line 1353
    invoke-virtual {v1, v5, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-wide/from16 v10, v18

    move-object/from16 v7, v20

    move-wide/from16 v12, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-wide/from16 v18, v10

    const-wide/16 v16, 0x0

    .line 1359
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1360
    iget-object v3, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v3}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinnedFiles(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pinner/PinnedFile;

    .line 1361
    iget-object v5, v4, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    move-object/from16 v6, v25

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    move-object/from16 v7, v24

    .line 1362
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1363
    iget-object v4, v4, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object/from16 v7, v24

    :cond_6
    :goto_5
    move-object/from16 v25, v6

    move-object/from16 v24, v7

    goto :goto_4

    :cond_7
    move-object/from16 v6, v25

    .line 1368
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1369
    iget-object v5, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v5, v4}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetAllPinsForGroup(Lcom/android/server/pinner/PinnerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1370
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nGroup:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1374
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide/from16 v5, v16

    move-wide v7, v5

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pinner/PinnedFile;

    .line 1375
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_7

    .line 1379
    :cond_8
    const-string v10, "  %s pinned: %d bytes (%.2f MB) pinlist:%b\n"

    iget-object v11, v9, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    iget-wide v14, v9, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1380
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 p3, v3

    move-object v15, v4

    iget-wide v3, v9, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v3, v3

    div-double v3, v3, v18

    .line 1381
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-boolean v4, v9, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v11, v14, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 1379
    invoke-virtual {v1, v10, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1382
    iget-wide v3, v9, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v12, v3

    add-long/2addr v5, v3

    .line 1384
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1385
    iget-object v3, v9, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v4, :cond_a

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/pinner/PinnedFile;

    .line 1386
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_8

    .line 1390
    :cond_9
    const-string v11, "  "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1391
    const-string v11, "%s pinned:%d bytes (%.2f MB) pinlist:%b (Dependency)\n"

    iget-object v14, v10, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    move-object/from16 v20, v3

    move/from16 v21, v4

    iget-wide v3, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    .line 1392
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-wide/from16 v22, v5

    iget-wide v4, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-double v4, v4

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-boolean v5, v10, Lcom/android/server/pinner/PinnedFile;->used_pinlist:Z

    .line 1393
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v14, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 1391
    invoke-virtual {v1, v11, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1394
    iget-wide v3, v10, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    add-long/2addr v12, v3

    add-long/2addr v7, v3

    .line 1396
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-wide/from16 v5, v22

    goto :goto_8

    :cond_a
    move-wide/from16 v22, v5

    move-object/from16 v3, p3

    move-object v4, v15

    goto/16 :goto_7

    :cond_b
    move-object/from16 p3, v3

    add-long v3, v5, v7

    .line 1400
    const-string v9, "Total Pinned = %d (%.2f MB) [Main=%d (%.2f MB), Dependencies=%d (%.2f MB)]\n\n"

    .line 1402
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    long-to-double v3, v3

    div-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    .line 1403
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    long-to-double v3, v5

    div-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    .line 1404
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    long-to-double v3, v7

    div-double v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    filled-new-array/range {v20 .. v25}, [Ljava/lang/Object;

    move-result-object v3

    .line 1400
    invoke-virtual {v1, v9, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v3, p3

    goto/16 :goto_6

    .line 1406
    :cond_c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1407
    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v2}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPinAnonAddress(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-eqz v2, :cond_d

    .line 1408
    const-string v2, "Pinned anon region: %d (%.2f MB)\n"

    iget-object v3, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v3}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v4}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, v4, v18

    .line 1409
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 1408
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1410
    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v2}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmCurrentlyPinnedAnonSize(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v2

    add-long/2addr v12, v2

    .line 1412
    :cond_d
    const-string v2, "Total pinned: %d bytes (%.2f MB)\n"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    long-to-double v4, v12

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1413
    const-string v2, "Available Pinner quota: %d bytes (%.2f MB)\n"

    iget-object v3, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v3}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetAvailableGlobalQuota(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    .line 1414
    invoke-static {v4}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetAvailableGlobalQuota(Lcom/android/server/pinner/PinnerService;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 1413
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1415
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1416
    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v2}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPendingRepin(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1417
    const-string v2, "Pending repin: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1418
    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v2}, Lcom/android/server/pinner/PinnerService;->-$$Nest$fgetmPendingRepin(Lcom/android/server/pinner/PinnerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1419
    iget-object v4, v0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v4, v3}, Lcom/android/server/pinner/PinnerService;->-$$Nest$mgetNameForKey(Lcom/android/server/pinner/PinnerService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 1420
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_9

    .line 1422
    :cond_e
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1424
    :cond_f
    monitor-exit v26

    return-void

    :goto_a
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public getPinnerStats()Ljava/util/List;
    .locals 0

    .line 1467
    invoke-virtual {p0}, Landroid/app/pinner/IPinnerService$Stub;->getPinnerStats_enforcePermission()V

    .line 1468
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->getPinnerStats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 1442
    array-length p1, p4

    const/4 p3, 0x1

    const/4 p5, -0x1

    const/4 v0, 0x0

    if-ge p1, p3, :cond_0

    .line 1443
    const-string p1, "Command is not given."

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pinner/PinnerService$BinderService;->printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p6, p5, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1448
    aget-object p3, p4, p1

    .line 1449
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo p4, "repin"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 1454
    const-string p1, "Unknown pinner command: %s. Supported commands: repin"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 1455
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1454
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pinner/PinnerService$BinderService;->printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p6, p5, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 1451
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService$BinderService;->repin()V

    .line 1461
    invoke-virtual {p6, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final printError(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 1

    .line 1434
    new-instance p0, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1435
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final repin()V
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$msendUnpinAppsMessage(Lcom/android/server/pinner/PinnerService;)V

    .line 1430
    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$BinderService;->this$0:Lcom/android/server/pinner/PinnerService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/pinner/PinnerService;->-$$Nest$msendPinAppsWithUpdatedKeysMessage(Lcom/android/server/pinner/PinnerService;I)V

    return-void
.end method
