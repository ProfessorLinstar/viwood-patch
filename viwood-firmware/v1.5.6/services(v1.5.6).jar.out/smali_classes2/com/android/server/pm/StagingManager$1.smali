.class public Lcom/android/server/pm/StagingManager$1;
.super Ljava/lang/Object;
.source "StagingManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/StagingManager;

.field public final synthetic val$observer:Landroid/content/pm/IStagedApexObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    iput-object p2, p0, Lcom/android/server/pm/StagingManager$1;->val$observer:Landroid/content/pm/IStagedApexObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v0}, Lcom/android/server/pm/StagingManager;->-$$Nest$fgetmStagedApexObservers(Lcom/android/server/pm/StagingManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-static {v1}, Lcom/android/server/pm/StagingManager;->-$$Nest$fgetmStagedApexObservers(Lcom/android/server/pm/StagingManager;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/StagingManager$1;->val$observer:Landroid/content/pm/IStagedApexObserver;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
