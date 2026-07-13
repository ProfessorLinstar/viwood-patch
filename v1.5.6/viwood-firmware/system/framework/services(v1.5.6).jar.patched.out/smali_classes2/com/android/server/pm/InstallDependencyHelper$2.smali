.class public Lcom/android/server/pm/InstallDependencyHelper$2;
.super Ljava/lang/Object;
.source "InstallDependencyHelper.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;

.field public final synthetic val$componentName:Landroid/content/ComponentName;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/ComponentName;I)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v0}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 247
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v1

    iget p0, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 249
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBinderDied()V
    .locals 3

    .line 239
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DependencyInstallerService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/android/server/pm/InstallDependencyHelper$2;->destroy()V

    return-void
.end method

.method public onDisconnected(Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DependencyInstallerService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/android/server/pm/InstallDependencyHelper$2;->destroy()V

    return-void
.end method

.method public bridge synthetic onDisconnected(Landroid/os/IInterface;)V
    .locals 0

    .line 229
    check-cast p1, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$2;->onDisconnected(Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V

    return-void
.end method
