.class public Lcom/android/server/MountServiceIdler$1;
.super Ljava/lang/Object;
.source "MountServiceIdler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/MountServiceIdler;


# direct methods
.method public constructor <init>(Lcom/android/server/MountServiceIdler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 45
    const-string v0, "MountServiceIdler"

    const-string v1, "Got mount service completion callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->-$$Nest$fgetmFinishCallback(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;

    move-result-object v0

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v1}, Lcom/android/server/MountServiceIdler;->-$$Nest$fgetmStarted(Lcom/android/server/MountServiceIdler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v1}, Lcom/android/server/MountServiceIdler;->-$$Nest$fgetmJobParams(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 49
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v1, v3}, Lcom/android/server/MountServiceIdler;->-$$Nest$fputmStarted(Lcom/android/server/MountServiceIdler;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {p0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
