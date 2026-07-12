.class public abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"


# static fields
.field public static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field public final mName:Ljava/lang/String;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public static synthetic $r8$lambda$9V0Zb4R5pN2d6Ym6JsffUDuLT04(Lcom/android/server/display/DisplayAdapter;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->lambda$sendTraversalRequestLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$m53kLy5P6p-BQH88mDK_wnWdYlc(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayAdapter;->lambda$sendDisplayDeviceEventLocked$0(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 60
    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    .line 63
    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method

.method public static createMode(IIF)Landroid/view/Display$Mode;
    .locals 7

    const/4 v0, 0x0

    .line 132
    new-array v5, v0, [F

    new-array v6, v0, [I

    move v4, p2

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/display/DisplayAdapter;->createMode(IIFF[F[I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static createMode(IIFF[F[I)Landroid/view/Display$Mode;
    .locals 9

    .line 138
    new-instance v0, Landroid/view/Display$Mode;

    sget-object v1, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v6, 0x0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    return-object v0
.end method

.method public static getPowerModeForState(I)I
    .locals 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object p0
.end method

.method public final synthetic lambda$sendDisplayDeviceEventLocked$0(Lcom/android/server/display/DisplayDevice;I)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    invoke-interface {p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$Listener;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public final synthetic lambda$sendTraversalRequestLocked$1()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    invoke-interface {p0}, Lcom/android/server/display/DisplayAdapter$Listener;->onTraversalRequested()V

    return-void
.end method

.method public registerLocked()V
    .locals 0

    .line 0
    return-void
.end method

.method public final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendTraversalRequestLocked()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
