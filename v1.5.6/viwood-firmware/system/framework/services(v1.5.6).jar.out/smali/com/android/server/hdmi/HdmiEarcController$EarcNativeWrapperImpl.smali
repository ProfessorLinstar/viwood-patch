.class public final Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;
.super Ljava/lang/Object;
.source "HdmiEarcController.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

.field public mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiEarcController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    .line 58
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V

    :cond_0
    return-void
.end method

.method public connectToHal()Z
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/tv/hdmi/earc/IEArc;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/hdmi/earc/IEArc;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    const-string v0, "Couldn\'t link callback object: "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public nativeGetLastReportedAudioCapabilities(I)[B
    .locals 1

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc;->getLastReportedAudioCapabilities(I)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 130
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Could not read last reported audio capabilities. Exception: "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public nativeGetState(I)B
    .locals 1

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc;->getState(I)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 120
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Could not get eARC state. Exception: "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public nativeInit()Z
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    move-result p0

    return p0
.end method

.method public nativeIsEarcEnabled()Z
    .locals 3

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    invoke-interface {p0}, Landroid/hardware/tv/hdmi/earc/IEArc;->isEArcEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 100
    const-string v0, "Could not read if eARC is enabled. Exception: "

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return v1
.end method

.method public nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    .line 109
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc;->setCallback(Landroid/hardware/tv/hdmi/earc/IEArcCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 111
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Could not set callback. Exception: "

    invoke-static {v0, p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    return-void
.end method

.method public nativeSetEarcEnabled(Z)V
    .locals 2

    .line 86
    const-string v0, "Could not set eARC enabled to "

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    invoke-interface {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc;->setEArcEnabled(Z)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 91
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ":. Exception: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_2

    .line 88
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ". Error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 88
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
