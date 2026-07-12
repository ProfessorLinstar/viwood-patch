.class public final Lcom/android/server/hdmi/HdmiEarcController;
.super Ljava/lang/Object;
.source "HdmiEarcController.java"


# instance fields
.field public mControlHandler:Landroid/os/Handler;

.field public mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiEarcController;)Lcom/android/server/hdmi/HdmiControlService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 140
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiEarcController;
    .locals 2

    .line 154
    new-instance v0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;-><init>(Lcom/android/server/hdmi/HdmiEarcController-IA;)V

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiEarcController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;)Lcom/android/server/hdmi/HdmiEarcController;

    move-result-object p0

    return-object p0
.end method

.method public static createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;)Lcom/android/server/hdmi/HdmiEarcController;
    .locals 1

    .line 162
    new-instance v0, Lcom/android/server/hdmi/HdmiEarcController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiEarcController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiEarcController;->init(Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 164
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Could not connect to eARC AIDL HAL."

    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final assertRunOnServiceThread()V
    .locals 1

    .line 180
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on service thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;)Z
    .locals 1

    .line 171
    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;->nativeInit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    .line 173
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

    new-instance v0, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;-><init>(Lcom/android/server/hdmi/HdmiEarcController;)V

    invoke-interface {p1, v0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;->nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 187
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEarcEnabled(Z)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcController;->assertRunOnServiceThread()V

    .line 197
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;->nativeSetEarcEnabled(Z)V

    return-void
.end method
