.class public Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/DataConnectionStats;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DataConnectionStats;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 161
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {p0}, Lcom/android/server/am/DataConnectionStats;->-$$Nest$mnotePhoneDataConnectionState(Lcom/android/server/am/DataConnectionStats;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0

    .line 178
    iget-object p2, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {p2, p1}, Lcom/android/server/am/DataConnectionStats;->-$$Nest$fputmDataState(Lcom/android/server/am/DataConnectionStats;I)V

    .line 179
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {p0}, Lcom/android/server/am/DataConnectionStats;->-$$Nest$mnotePhoneDataConnectionState(Lcom/android/server/am/DataConnectionStats;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->-$$Nest$fputmServiceState(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/ServiceState;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/am/DataConnectionStats;->-$$Nest$fputmNrState(Lcom/android/server/am/DataConnectionStats;I)V

    .line 173
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {p0}, Lcom/android/server/am/DataConnectionStats;->-$$Nest$mnotePhoneDataConnectionState(Lcom/android/server/am/DataConnectionStats;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    invoke-static {p0, p1}, Lcom/android/server/am/DataConnectionStats;->-$$Nest$fputmSignalStrength(Lcom/android/server/am/DataConnectionStats;Landroid/telephony/SignalStrength;)V

    return-void
.end method
