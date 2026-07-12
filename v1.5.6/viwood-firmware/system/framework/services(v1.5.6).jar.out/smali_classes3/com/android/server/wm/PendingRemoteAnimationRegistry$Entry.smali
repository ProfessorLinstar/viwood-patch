.class public Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;
.super Ljava/lang/Object;
.source "PendingRemoteAnimationRegistry.java"


# instance fields
.field public final adapter:Landroid/view/RemoteAnimationAdapter;

.field public final launchCookie:Landroid/os/IBinder;

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;


# direct methods
.method public static synthetic $r8$lambda$7b7K_tF1GgqxuvfF0SqaYWXxBTk(Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .locals 2

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->packageName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 84
    iput-object p4, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    .line 85
    invoke-static {p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmHandler(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmLock(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {v1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmEntries(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    if-ne v1, p0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    invoke-static {p0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->-$$Nest$fgetmEntries(Lcom/android/server/wm/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
