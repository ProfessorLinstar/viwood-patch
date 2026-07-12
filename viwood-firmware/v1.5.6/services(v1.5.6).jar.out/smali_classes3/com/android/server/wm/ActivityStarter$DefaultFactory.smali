.class public Lcom/android/server/wm/ActivityStarter$DefaultFactory;
.super Ljava/lang/Object;
.source "ActivityStarter.java"

# interfaces
.implements Lcom/android/server/wm/ActivityStarter$Factory;


# instance fields
.field public final MAX_STARTER_COUNT:I

.field public mController:Lcom/android/server/wm/ActivityStartController;

.field public mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field public mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mStarterPool:Landroid/util/Pools$SynchronizedPool;

.field public mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 2

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 357
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->MAX_STARTER_COUNT:I

    .line 364
    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    invoke-direct {v1, v0}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    .line 369
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 370
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 371
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    return-void
.end method


# virtual methods
.method public obtain()Lcom/android/server/wm/ActivityStarter;
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Lcom/android/server/wm/ActivityStarter;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/wm/ActivityStarter;-><init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    return-object v0

    .line 385
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Too early to start activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public recycle(Lcom/android/server/wm/ActivityStarter;)V
    .locals 1

    const/4 v0, 0x1

    .line 395
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 396
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setController(Lcom/android/server/wm/ActivityStartController;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/wm/ActivityStartController;

    return-void
.end method
