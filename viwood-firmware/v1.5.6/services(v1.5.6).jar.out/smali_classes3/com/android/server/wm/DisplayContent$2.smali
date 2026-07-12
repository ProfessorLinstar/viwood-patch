.class public Lcom/android/server/wm/DisplayContent$2;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1134
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmDisplayReady(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmDisplayPolicy(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 1137
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$2;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$mgetMinimalTaskSizeDp(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1139
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onLowMemory()V
    .locals 0

    .line 0
    return-void
.end method
