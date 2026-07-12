.class public Lcom/android/server/wm/Letterbox$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Letterbox.java"


# instance fields
.field public final mWmService:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Letterbox-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Letterbox$DoubleTapListener;-><init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v1}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmOuter(Lcom/android/server/wm/Letterbox;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 269
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {p0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmAppCompatReachabilityPolicy(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 269
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleDoubleTap(II)V

    .line 271
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 273
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    .line 274
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
