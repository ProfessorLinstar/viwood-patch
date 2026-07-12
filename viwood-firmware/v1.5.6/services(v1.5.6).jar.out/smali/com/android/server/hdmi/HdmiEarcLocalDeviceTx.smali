.class public Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;
.super Lcom/android/server/hdmi/HdmiEarcLocalDevice;
.source "HdmiEarcLocalDeviceTx.java"


# static fields
.field public static final earcStatusNames:[Ljava/lang/String;


# instance fields
.field public mReportCapsHandler:Landroid/os/Handler;

.field public mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const-string v0, "HDMI_EARC_STATUS_ARC_PENDING"

    const-string v1, "HDMI_EARC_STATUS_EARC_CONNECTED"

    const-string v2, "HDMI_EARC_STATUS_IDLE"

    const-string v3, "HDMI_EARC_STATUS_EARC_PENDING"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 2

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiEarcLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 77
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 78
    :try_start_0
    iput v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    .line 81
    new-instance p1, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;-><init>(Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx-IA;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    return-void

    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TX, mEarcStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final earcStatusToString(I)Ljava/lang/String;
    .locals 0

    .line 85
    sget-object p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public handleEarcCapabilitiesReported([B)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    .line 120
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->parseCapabilities([B)Ljava/util/List;

    move-result-object p1

    .line 123
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(ZLjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleEarcStateChange(I)V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    const-string v1, "eARC state change [old: %s(%d) new: %s(%d)]"

    iget v2, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->earcStatusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget v1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 96
    iput p1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDevice;->mEarcStatus:I

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(ZLjava/util/List;)V

    .line 102
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 104
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->notifyEarcStatusToAudioService(ZLjava/util/List;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v1, v4, :cond_2

    .line 108
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    if-ne v1, v4, :cond_3

    .line 111
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx;->mReportCapsRunnable:Lcom/android/server/hdmi/HdmiEarcLocalDeviceTx$ReportCapsRunnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final parseCapabilities([B)Ljava/util/List;
    .locals 13

    .line 146
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    array-length v0, p1

    const-string v1, "HdmiEarcLocalDeviceTx"

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 148
    const-string p1, "Raw eARC capabilities array doesn\u00b4t contain any blocks."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 151
    aget-byte v3, p1, v0

    .line 152
    array-length v4, p1

    if-ge v4, v3, :cond_1

    .line 153
    const-string p1, "Raw eARC capabilities array is shorter than the reported payload length."

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const/4 v4, 0x3

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_8

    .line 159
    aget-byte v6, p1, v5

    and-int/lit16 v7, v6, 0xe0

    shr-int/lit8 v7, v7, 0x5

    and-int/lit8 v6, v6, 0x1f

    if-nez v6, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v7, v9, :cond_5

    if-eq v7, v2, :cond_4

    const/4 v9, 0x7

    if-eq v7, v9, :cond_3

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This tagcode was not handled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v5, 0x1

    .line 199
    aget-byte v7, p1, v7

    const/16 v9, 0x11

    if-ne v7, v9, :cond_7

    add-int/lit8 v7, v6, 0x1

    .line 201
    new-array v9, v7, [B

    .line 202
    invoke-static {p1, v5, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    new-instance v7, Landroid/media/AudioDescriptor;

    invoke-direct {v7, v4, v8, v9}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 208
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v6, 0x1

    .line 190
    new-array v9, v7, [B

    .line 191
    invoke-static {p1, v5, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    new-instance v7, Landroid/media/AudioDescriptor;

    invoke-direct {v7, v0, v8, v9}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 196
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 172
    :cond_5
    rem-int/lit8 v7, v6, 0x3

    if-eqz v7, :cond_6

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid length of SAD block: expected a factor of 3 but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    :cond_6
    new-array v7, v6, [B

    add-int/lit8 v10, v5, 0x1

    .line 178
    invoke-static {p1, v10, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v10, v8

    :goto_1
    if-ge v10, v6, :cond_7

    .line 180
    new-instance v11, Landroid/media/AudioDescriptor;

    add-int/lit8 v12, v10, 0x3

    .line 183
    invoke-static {v7, v10, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v11, v9, v8, v10}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 184
    invoke-interface {p0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-object p0
.end method
