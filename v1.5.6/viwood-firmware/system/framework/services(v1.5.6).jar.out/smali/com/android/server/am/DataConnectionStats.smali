.class public Lcom/android/server/am/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# instance fields
.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mContext:Landroid/content/Context;

.field public mDataState:I

.field public final mListenerHandler:Landroid/os/Handler;

.field public mNrState:I

.field public final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mServiceState:Landroid/telephony/ServiceState;

.field public mSignalStrength:Landroid/telephony/SignalStrength;

.field public mSimState:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmDataState(Lcom/android/server/am/DataConnectionStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNrState(Lcom/android/server/am/DataConnectionStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmServiceState(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSignalStrength(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotePhoneDataConnectionState(Lcom/android/server/am/DataConnectionStats;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x5

    .line 51
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    .line 55
    iput v0, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    .line 58
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 60
    iput-object p2, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;

    new-instance v0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;

    invoke-direct {v0, p2}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;-><init>(Lcom/android/server/am/DataConnectionStats;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public final hasService()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 141
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCdma()Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notePhoneDataConnectionState()V
    .locals 11

    .line 89
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    goto :goto_4

    .line 92
    :cond_0
    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->hasService()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    if-ne v0, v4, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v2

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 98
    invoke-virtual {v0, v4, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_2
    move v6, v2

    goto :goto_3

    .line 100
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v2

    goto :goto_2

    .line 106
    :goto_3
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 107
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    iget v9, p0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v10

    .line 106
    invoke-interface/range {v5 .. v10}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 109
    const-string v0, "DataConnectionStats"

    const-string v1, "Error noting data connection state"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/server/am/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    :cond_0
    return-void
.end method

.method public startMonitoring()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    iget-object v1, p0, Lcom/android/server/am/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1c1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/am/DataConnectionStats;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/DataConnectionStats;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final updateSimState(Landroid/content/Intent;)V
    .locals 2

    .line 114
    const-string/jumbo v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 116
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    return-void

    .line 117
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x5

    .line 118
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    return-void

    .line 119
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const-string/jumbo v0, "reason"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    const-string v0, "PIN"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 123
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    return-void

    .line 124
    :cond_2
    const-string v0, "PUK"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 125
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    return-void

    :cond_3
    const/4 p1, 0x4

    .line 127
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mSimState:I

    return-void
.end method
