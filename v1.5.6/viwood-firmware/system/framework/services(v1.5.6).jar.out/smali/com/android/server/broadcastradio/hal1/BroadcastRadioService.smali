.class public Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mNativeContext:J

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    return-void
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeLoadModules(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeFinalize(J)V

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public loadModules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeLoadModules(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 67
    :cond_0
    const-string p0, "BcRadio1Srv"

    const-string p1, "Cannot open tuner on HAL 1.x client for non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot open tuner for non-current user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
