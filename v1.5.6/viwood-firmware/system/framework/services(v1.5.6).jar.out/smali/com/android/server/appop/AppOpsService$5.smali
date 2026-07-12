.class public Lcom/android/server/appop/AppOpsService$5;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1172
    const-string p1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    .line 1173
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1175
    invoke-static {}, Lcom/android/server/appop/AppOpsService;->-$$Nest$sfgetOPS_RESTRICTED_ON_SUSPEND()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v6, v0, v3

    .line 1177
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v4

    .line 1178
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmOpModeWatchers(Lcom/android/server/appop/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-nez v5, :cond_0

    .line 1180
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_0
    move-object v7, v5

    .line 1182
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1183
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v2

    .line 1184
    :goto_1
    array-length v4, p1

    if-ge v10, v4, :cond_3

    .line 1185
    aget v7, p1, v10

    .line 1186
    aget-object v8, p2, v10

    .line 1189
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1190
    const-string v9, "default:0"

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1192
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1193
    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmVirtualDeviceManagerInternal(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v9

    .line 1194
    invoke-virtual {v9}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v9

    .line 1193
    invoke-interface {v4, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1196
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 1197
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$5;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static/range {v4 .. v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnotifyOpChanged(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1183
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void
.end method
