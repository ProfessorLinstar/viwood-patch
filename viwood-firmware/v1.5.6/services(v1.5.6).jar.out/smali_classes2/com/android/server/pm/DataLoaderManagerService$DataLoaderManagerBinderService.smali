.class public final Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;
.super Landroid/content/pm/IDataLoaderManager$Stub;
.source "DataLoaderManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DataLoaderManagerService;


# direct methods
.method public static synthetic $r8$lambda$soTuULaL7NmdxaXk7LcsdvltKqw(Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;Landroid/content/Intent;Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;Landroid/content/ComponentName;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->lambda$bindToDataLoader$0(Landroid/content/Intent;Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/DataLoaderManagerService;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z
    .locals 8

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 78
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/DataLoaderParamsParcel;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/DataLoaderParamsParcel;->className:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->resolveDataLoaderComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1

    .line 84
    const-string p0, "DataLoaderManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid component: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for ID="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_1
    new-instance v5, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    iget-object p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-direct {v5, p2, p1, p5}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;-><init>(Lcom/android/server/pm/DataLoaderManagerService;ILandroid/content/pm/IDataLoaderStatusListener;)V

    .line 92
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 93
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    iget-object p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {p2}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v2, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;Landroid/content/Intent;Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;Landroid/content/ComponentName;I)V

    invoke-virtual {p2, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    .line 80
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getDataLoader(I)Landroid/content/pm/IDataLoader;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {p0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    if-nez p0, :cond_0

    .line 151
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->getDataLoader()Landroid/content/pm/IDataLoader;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 154
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$bindToDataLoader$0(Landroid/content/Intent;Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;Landroid/content/ComponentName;I)V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/os/Handler;

    move-result-object v5

    .line 97
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    .line 96
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to bind to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for ID="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataLoaderManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {p0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public final resolveDataLoaderComponentName(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 5

    .line 114
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {p0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 115
    const-string v1, "DataLoaderManager"

    if-nez p0, :cond_0

    .line 116
    const-string p0, "PackageManager is not available."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 119
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOAD_DATA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 122
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 123
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 131
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 132
    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 138
    :cond_2
    const-string p0, "Didn\'t find any matching data loader service provider."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 124
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find data loader service provider in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public unbindFromDataLoader(I)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {v0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    invoke-static {p0}, Lcom/android/server/pm/DataLoaderManagerService;->-$$Nest$fgetmServiceConnections(Lcom/android/server/pm/DataLoaderManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    if-nez p0, :cond_0

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->destroy()V

    .line 170
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
